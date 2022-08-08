import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../map/utils/map_utils.dart';
import '../model/provider_model.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _Initial()) {
    on<HomeEvent>(_onEvent);
  }
  //final imageList = IVector<String>.emptyVector();
  final imageList = IVector.from([
    'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
    'https://e-magazine.asiamedia.vn/wp-content/uploads/2021/07/top-10-hang-dau-nhot-noi-tieng-nhat-tai-viet-nam-21.jpg',
    'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
    'https://e-magazine.asiamedia.vn/wp-content/uploads/2021/07/top-10-hang-dau-nhot-noi-tieng-nhat-tai-viet-nam-21.jpg',
  ]);
  final timeRepair = '16:10 - 17:00';
  final dayRepair = '17/10/2022';
  Future<void> _onEvent(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const HomeState.loading());
        const provider = ProviderModel(rating: 4.5);
        emit(
          HomeState.success(
            imgs: imageList,
            provider: provider,
            timeRepair: timeRepair,
            dayRepair: dayRepair,
          ),
        );
      },
      submitted: (String vehicle) async {
        final boxRprRecord = await Hive.openBox<dynamic>('repairRecord');
        await boxRprRecord.put('vehicle', vehicle);
        final location = await determinePosition()
            .then((v) => LatLng(v.latitude, v.longitude));
        final boxLocation = await Hive.openBox<dynamic>('location');
        await boxLocation.put('currentLat', location.latitude);
        await boxLocation.put('currentLng', location.longitude);
        emit(HomeState.appServiceSuccess(currentLocation: location));
      },
    );
  }
}
