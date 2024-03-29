part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.failure({
    required IVector<String> ads,
  }) = _Failure;
  const factory HomeState.success({
    required IVector<String> ads,
    required Option<RepairRecord> activeRepairRecord,
    required HomeModel homeModel,
  }) = _Success;
}
