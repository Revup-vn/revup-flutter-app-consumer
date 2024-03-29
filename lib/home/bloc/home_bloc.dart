import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../shared/extension.dart';
import '../model/home_model.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.sr, this._repairRecord, this.user, this._userRepos)
      : super(const _Initial()) {
    on<HomeEvent>(_onEvent);
    _s = _repairRecord
        .collection()
        .where('cid', isEqualTo: user.uuid)
        .snapshots()
        .listen((event) {
      add(const HomeEvent.started());
    });
  }
  final AppUser user;
  final StoreRepository sr;
  final IStore<RepairRecord> _repairRecord;
  final IStore<AppUser> _userRepos;
  final imageList = IVector.from([
    'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
    'https://e-magazine.asiamedia.vn/wp-content/uploads/2021/07/top-10-hang-dau-nhot-noi-tieng-nhat-tai-viet-nam-21.jpg',
    'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
    'https://e-magazine.asiamedia.vn/wp-content/uploads/2021/07/top-10-hang-dau-nhot-noi-tieng-nhat-tai-viet-nam-21.jpg',
  ]);
  late final StreamSubscription<QuerySnapshot<Map<String, dynamic>>> _s;
  Future<void> _onEvent(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const HomeState.loading());
        final maybeRepairRecord =
            (await _repairRecord.where('cid', isEqualTo: user.uuid))
                .map(
                  (r) => r.map<Option<RepairRecord>>(
                    (a) => a.maybeMap(
                      aborted: (v) => some(a),
                      finished: (v) => some(a),
                      orElse: none,
                    ),
                  ),
                )
                .fold<IList<RepairRecord>>(
                  (l) => ilist([]),
                  (r) => r
                      .filter((a) => a.isSome())
                      .map((a) => a.getOrElse(() => throw NullThrownError())),
                )
                .find((a) => true);
        if (maybeRepairRecord.isSome()) {
          final completer = Completer<RepairRecord>();
          final tmp = (await _repairRecord.where('cid', isEqualTo: user.uuid))
              .map(
                (r) => r.map(
                  (a) => a.maybeMap<Option<RepairRecord>>(
                    orElse: none,
                    finished: (value) => some(a),
                  ),
                ),
              )
              .fold<IList<RepairRecord>>(
                (l) => nil(),
                (r) => r.filter((a) => a.isSome()).map(
                      (a) => a.getOrElse(
                        () => throw NullThrownError(),
                      ),
                    ),
              )
              .sortByDouble(
                (e1, e2) => e1.created.millisecondsSinceEpoch
                    .compareTo(e2.created.millisecondsSinceEpoch),
              );
          tmp.headOption.fold(() => null, completer.complete);
          final latestRepairRecord = await completer.future;
          final completerUser = Completer<Either<StoreFailure, AppUser>>();

          (await _userRepos.get(latestRepairRecord.pid)).fold(
            (l) => completerUser.complete(left(l)),
            (r) => completerUser.complete(
              right(r),
            ),
          );
          final provider = await completerUser.future;
          provider.fold(
            (l) => emit(HomeState.failure(ads: imageList)),
            (r) => emit(
              HomeState.success(
                ads: imageList,
                activeRepairRecord: maybeRepairRecord,
                homeModel: HomeModel.fromDTO(r, latestRepairRecord),
              ),
            ),
          );
        } else {
          emit(HomeState.failure(ads: imageList));
        }
      },
      submited: (type, onRoute) async {
        final boxRprRecord = Hive.box<dynamic>(
          'repairRecord',
        );

        final boxLocation = Hive.box<dynamic>(
          'location',
        );
        if (type == 0) {
          await boxRprRecord.put(
            'vehicle',
            'car',
          );
          onRoute(
            boxLocation.get(
              'currentLat',
            ) as double,
            boxLocation.get(
              'currentLng',
            ) as double,
          );
        } else {
          await boxRprRecord.put(
            'vehicle',
            'motorbike',
          );
          onRoute(
            boxLocation.get(
              'currentLat',
            ) as double,
            boxLocation.get(
              'currentLng',
            ) as double,
          );
        }
      },
    );
  }

  @override
  Future<void> close() async {
    await _s.cancel();
    return super.close();
  }
}
