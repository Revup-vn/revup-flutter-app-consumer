import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'overview_order_model.freezed.dart';

@freezed
class OverviewOrderModel with _$OverviewOrderModel {
  factory OverviewOrderModel({
    required String providerID,
    required String providerAvatarImg,
    required String proviverPhoneNumber,
    required String videoCallID,
    required String providerName,
    required double distance,
  }) = _OverviewOrderModel;

  factory OverviewOrderModel.fromDto(AppUser user, double distance) =>
      user.maybeMap(
        provider: (value) => OverviewOrderModel(
          providerID: user.uuid,
          videoCallID: value.vac.id,
          providerName: '${user.firstName} ${user.lastName}',
          distance: distance,
          providerAvatarImg: user.avatarUrl,
          proviverPhoneNumber: user.phone,
        ),
        orElse: () => throw NullThrownError(),
      );
}
