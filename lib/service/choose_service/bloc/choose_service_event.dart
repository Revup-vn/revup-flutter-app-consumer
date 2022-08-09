part of 'choose_service_bloc.dart';

@freezed
class ChooseServiceEvent with _$ChooseServiceEvent {
  const factory ChooseServiceEvent.started() = _Started;
  const factory ChooseServiceEvent.serviceListSubmitted() =
      _ServiceListSubmitted;
  const factory ChooseServiceEvent.newServiceRequested(
    OptionalService optionalService,
  ) = _NewServiceRequested;
  const factory ChooseServiceEvent.serviceSelectChanged({
    required ServiceData serviceData,
    required int index,
  }) = _ServiceSelectChanged;
  const factory ChooseServiceEvent.detailRequestAccepted() =
      _DetailRequestAccepted;
}
