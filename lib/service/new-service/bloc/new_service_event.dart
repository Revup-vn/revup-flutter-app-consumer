part of 'new_service_bloc.dart';

@freezed
class NewServiceEvent with _$NewServiceEvent {
  const factory NewServiceEvent.started() = _Started;
  // const factory NewServiceEvent.submitted(OptionalService optional) =
  //     _Submitted;
}
