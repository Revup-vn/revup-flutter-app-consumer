part of 'find_list_repairer_bloc.u.dart';

@freezed
class FindListRepairerState with _$FindListRepairerState {
  const factory FindListRepairerState.initial({
    required bool hasValue,
  }) = _Initial;
  const factory FindListRepairerState.dataLoadSuccess({
    required IList<ProviderData> listProvider,
  }) = _DataLoadSuccess;
  const factory FindListRepairerState.refreshSuccess({
    required IList<ProviderData> listProvider,
  }) = _RefreshSuccess;

  const factory FindListRepairerState.dropdownListChangedSuccess({
    required IList<ProviderData> listProvider,
    required RepairerSortType sortType,
  }) = _DropdownListChangedSuccess;
  const factory FindListRepairerState.loading() = _Loading;
  const factory FindListRepairerState.failure({required String? errorMessage}) =
      _Failure;
}