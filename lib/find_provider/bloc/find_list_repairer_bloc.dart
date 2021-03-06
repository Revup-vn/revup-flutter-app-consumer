import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../models/provider_data.u.dart';

part 'find_list_repairer_event.dart';
part 'find_list_repairer_state.dart';
part 'find_list_repairer_bloc.freezed.dart';

class FindListRepairerBloc
    extends Bloc<FindListRepairerEvent, FindListRepairerState> {
  FindListRepairerBloc(this._userStore)
      : super(const _Initial(hasValue: false)) {
    on<FindListRepairerEvent>(_onEvent);
  }

  final IStore<AppUser> _userStore;
  FutureOr<void> _onEvent(
    FindListRepairerEvent event,
    Emitter<FindListRepairerState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(
          const FindListRepairerState.loading(),
        );
        (await _userStore.all())
            .map((aUsers) => aUsers.map(ProviderData.fromDtos))
            .fold(
              (l) => emit(const FindListRepairerState.failure()),
              (r) => emit(
                FindListRepairerState.dataLoadSuccess(
                  listProvider: r,
                ),
              ),
            );
      },
      refresh: () {
        emit(
          const FindListRepairerState.loading(),
        );
        emit(
          FindListRepairerState.refreshSuccess(
            listProvider: listRepairer,
          ),
        );
      },
      dropdownListChanged: (sortType) {
        emit(
          FindListRepairerState.dropdownListChangedSuccess(
            listProvider: listRepairer,
            sortType: sortType,
          ),
        );
      },
    );
  }

  final listRepairer = ilist(
    <ProviderData>[
      ProviderData(
        id: '1',
        fullName: 'Nguyễn Thị Sửa',
        address: '12346 địa chỉ ở đâu đó',
        distance: 500,
        numberStarRating: 4.5,
        avatar:
            'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
        backgroundImg:
            'https://listbds.com/wp-content/uploads/2022/01/cua-hang-sua-xe-may-uy-tin.jpg',
        profileBio: 'Đến với chúng tôi các bạn sẽ là thượng đế',
        timeArrivalInMinute: 10,
        totalRating: 107,
      ),
    ],
  );
}
