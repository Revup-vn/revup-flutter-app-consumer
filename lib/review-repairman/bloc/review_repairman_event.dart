part of 'review_repairman_bloc.u.dart';

@freezed
class ReviewRepairmanEvent with _$ReviewRepairmanEvent {
  const factory ReviewRepairmanEvent.started() = _Started;
  const factory ReviewRepairmanEvent.fieldFill({required int rating}) =
      _FieldFill;
}
