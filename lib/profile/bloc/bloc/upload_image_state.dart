part of 'upload_image_bloc.dart';

@freezed
class UploadImageState with _$UploadImageState {
  const factory UploadImageState.initial() = _Initial;
  const factory UploadImageState.choosePhotoSuccess({
    required File file,
  }) = _ChoosePhotoSuccess;
}
