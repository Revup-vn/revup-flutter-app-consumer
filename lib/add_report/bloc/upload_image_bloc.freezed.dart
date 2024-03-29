// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadImageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            ImageSource source, List<File> currentListStorage, int typeUpload)
        imageUploadSelected,
    required TResult Function(List<File> currentListStorage, int typeUpload)
        remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            ImageSource source, List<File> currentListStorage, int typeUpload)?
        imageUploadSelected,
    TResult Function(List<File> currentListStorage, int typeUpload)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            ImageSource source, List<File> currentListStorage, int typeUpload)?
        imageUploadSelected,
    TResult Function(List<File> currentListStorage, int typeUpload)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ImageUploadSelected value) imageUploadSelected,
    required TResult Function(_Remove value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    TResult Function(_Remove value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImageEventCopyWith<$Res> {
  factory $UploadImageEventCopyWith(
          UploadImageEvent value, $Res Function(UploadImageEvent) then) =
      _$UploadImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadImageEventCopyWithImpl<$Res>
    implements $UploadImageEventCopyWith<$Res> {
  _$UploadImageEventCopyWithImpl(this._value, this._then);

  final UploadImageEvent _value;
  // ignore: unused_field
  final $Res Function(UploadImageEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$UploadImageEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'UploadImageEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            ImageSource source, List<File> currentListStorage, int typeUpload)
        imageUploadSelected,
    required TResult Function(List<File> currentListStorage, int typeUpload)
        remove,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            ImageSource source, List<File> currentListStorage, int typeUpload)?
        imageUploadSelected,
    TResult Function(List<File> currentListStorage, int typeUpload)? remove,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            ImageSource source, List<File> currentListStorage, int typeUpload)?
        imageUploadSelected,
    TResult Function(List<File> currentListStorage, int typeUpload)? remove,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ImageUploadSelected value) imageUploadSelected,
    required TResult Function(_Remove value) remove,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    TResult Function(_Remove value)? remove,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UploadImageEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ImageUploadSelectedCopyWith<$Res> {
  factory _$$_ImageUploadSelectedCopyWith(_$_ImageUploadSelected value,
          $Res Function(_$_ImageUploadSelected) then) =
      __$$_ImageUploadSelectedCopyWithImpl<$Res>;
  $Res call(
      {ImageSource source, List<File> currentListStorage, int typeUpload});
}

/// @nodoc
class __$$_ImageUploadSelectedCopyWithImpl<$Res>
    extends _$UploadImageEventCopyWithImpl<$Res>
    implements _$$_ImageUploadSelectedCopyWith<$Res> {
  __$$_ImageUploadSelectedCopyWithImpl(_$_ImageUploadSelected _value,
      $Res Function(_$_ImageUploadSelected) _then)
      : super(_value, (v) => _then(v as _$_ImageUploadSelected));

  @override
  _$_ImageUploadSelected get _value => super._value as _$_ImageUploadSelected;

  @override
  $Res call({
    Object? source = freezed,
    Object? currentListStorage = freezed,
    Object? typeUpload = freezed,
  }) {
    return _then(_$_ImageUploadSelected(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
      currentListStorage: currentListStorage == freezed
          ? _value._currentListStorage
          : currentListStorage // ignore: cast_nullable_to_non_nullable
              as List<File>,
      typeUpload: typeUpload == freezed
          ? _value.typeUpload
          : typeUpload // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ImageUploadSelected implements _ImageUploadSelected {
  const _$_ImageUploadSelected(
      {required this.source,
      required final List<File> currentListStorage,
      required this.typeUpload})
      : _currentListStorage = currentListStorage;

  @override
  final ImageSource source;
  final List<File> _currentListStorage;
  @override
  List<File> get currentListStorage {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentListStorage);
  }

  @override
  final int typeUpload;

  @override
  String toString() {
    return 'UploadImageEvent.imageUploadSelected(source: $source, currentListStorage: $currentListStorage, typeUpload: $typeUpload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageUploadSelected &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality()
                .equals(other._currentListStorage, _currentListStorage) &&
            const DeepCollectionEquality()
                .equals(other.typeUpload, typeUpload));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(_currentListStorage),
      const DeepCollectionEquality().hash(typeUpload));

  @JsonKey(ignore: true)
  @override
  _$$_ImageUploadSelectedCopyWith<_$_ImageUploadSelected> get copyWith =>
      __$$_ImageUploadSelectedCopyWithImpl<_$_ImageUploadSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            ImageSource source, List<File> currentListStorage, int typeUpload)
        imageUploadSelected,
    required TResult Function(List<File> currentListStorage, int typeUpload)
        remove,
  }) {
    return imageUploadSelected(source, currentListStorage, typeUpload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            ImageSource source, List<File> currentListStorage, int typeUpload)?
        imageUploadSelected,
    TResult Function(List<File> currentListStorage, int typeUpload)? remove,
  }) {
    return imageUploadSelected?.call(source, currentListStorage, typeUpload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            ImageSource source, List<File> currentListStorage, int typeUpload)?
        imageUploadSelected,
    TResult Function(List<File> currentListStorage, int typeUpload)? remove,
    required TResult orElse(),
  }) {
    if (imageUploadSelected != null) {
      return imageUploadSelected(source, currentListStorage, typeUpload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ImageUploadSelected value) imageUploadSelected,
    required TResult Function(_Remove value) remove,
  }) {
    return imageUploadSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    TResult Function(_Remove value)? remove,
  }) {
    return imageUploadSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) {
    if (imageUploadSelected != null) {
      return imageUploadSelected(this);
    }
    return orElse();
  }
}

abstract class _ImageUploadSelected implements UploadImageEvent {
  const factory _ImageUploadSelected(
      {required final ImageSource source,
      required final List<File> currentListStorage,
      required final int typeUpload}) = _$_ImageUploadSelected;

  ImageSource get source;
  List<File> get currentListStorage;
  int get typeUpload;
  @JsonKey(ignore: true)
  _$$_ImageUploadSelectedCopyWith<_$_ImageUploadSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveCopyWith<$Res> {
  factory _$$_RemoveCopyWith(_$_Remove value, $Res Function(_$_Remove) then) =
      __$$_RemoveCopyWithImpl<$Res>;
  $Res call({List<File> currentListStorage, int typeUpload});
}

/// @nodoc
class __$$_RemoveCopyWithImpl<$Res> extends _$UploadImageEventCopyWithImpl<$Res>
    implements _$$_RemoveCopyWith<$Res> {
  __$$_RemoveCopyWithImpl(_$_Remove _value, $Res Function(_$_Remove) _then)
      : super(_value, (v) => _then(v as _$_Remove));

  @override
  _$_Remove get _value => super._value as _$_Remove;

  @override
  $Res call({
    Object? currentListStorage = freezed,
    Object? typeUpload = freezed,
  }) {
    return _then(_$_Remove(
      currentListStorage: currentListStorage == freezed
          ? _value._currentListStorage
          : currentListStorage // ignore: cast_nullable_to_non_nullable
              as List<File>,
      typeUpload: typeUpload == freezed
          ? _value.typeUpload
          : typeUpload // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Remove implements _Remove {
  const _$_Remove(
      {required final List<File> currentListStorage, required this.typeUpload})
      : _currentListStorage = currentListStorage;

  final List<File> _currentListStorage;
  @override
  List<File> get currentListStorage {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentListStorage);
  }

  @override
  final int typeUpload;

  @override
  String toString() {
    return 'UploadImageEvent.remove(currentListStorage: $currentListStorage, typeUpload: $typeUpload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Remove &&
            const DeepCollectionEquality()
                .equals(other._currentListStorage, _currentListStorage) &&
            const DeepCollectionEquality()
                .equals(other.typeUpload, typeUpload));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_currentListStorage),
      const DeepCollectionEquality().hash(typeUpload));

  @JsonKey(ignore: true)
  @override
  _$$_RemoveCopyWith<_$_Remove> get copyWith =>
      __$$_RemoveCopyWithImpl<_$_Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            ImageSource source, List<File> currentListStorage, int typeUpload)
        imageUploadSelected,
    required TResult Function(List<File> currentListStorage, int typeUpload)
        remove,
  }) {
    return remove(currentListStorage, typeUpload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            ImageSource source, List<File> currentListStorage, int typeUpload)?
        imageUploadSelected,
    TResult Function(List<File> currentListStorage, int typeUpload)? remove,
  }) {
    return remove?.call(currentListStorage, typeUpload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            ImageSource source, List<File> currentListStorage, int typeUpload)?
        imageUploadSelected,
    TResult Function(List<File> currentListStorage, int typeUpload)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(currentListStorage, typeUpload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ImageUploadSelected value) imageUploadSelected,
    required TResult Function(_Remove value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    TResult Function(_Remove value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements UploadImageEvent {
  const factory _Remove(
      {required final List<File> currentListStorage,
      required final int typeUpload}) = _$_Remove;

  List<File> get currentListStorage;
  int get typeUpload;
  @JsonKey(ignore: true)
  _$$_RemoveCopyWith<_$_Remove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<File> file) choosePhotoSuccess,
    required TResult Function() failure,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> file)? choosePhotoSuccess,
    TResult Function()? failure,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> file)? choosePhotoSuccess,
    TResult Function()? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) choosePhotoSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? choosePhotoSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? choosePhotoSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImageStateCopyWith<$Res> {
  factory $UploadImageStateCopyWith(
          UploadImageState value, $Res Function(UploadImageState) then) =
      _$UploadImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadImageStateCopyWithImpl<$Res>
    implements $UploadImageStateCopyWith<$Res> {
  _$UploadImageStateCopyWithImpl(this._value, this._then);

  final UploadImageState _value;
  // ignore: unused_field
  final $Res Function(UploadImageState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$UploadImageStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UploadImageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<File> file) choosePhotoSuccess,
    required TResult Function() failure,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> file)? choosePhotoSuccess,
    TResult Function()? failure,
    TResult Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> file)? choosePhotoSuccess,
    TResult Function()? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) choosePhotoSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? choosePhotoSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? choosePhotoSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UploadImageState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call({List<File> file});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$UploadImageStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$_Success(
      file: file == freezed
          ? _value._file
          : file // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required final List<File> file}) : _file = file;

  final List<File> _file;
  @override
  List<File> get file {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_file);
  }

  @override
  String toString() {
    return 'UploadImageState.choosePhotoSuccess(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other._file, _file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_file));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<File> file) choosePhotoSuccess,
    required TResult Function() failure,
    required TResult Function() loading,
  }) {
    return choosePhotoSuccess(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> file)? choosePhotoSuccess,
    TResult Function()? failure,
    TResult Function()? loading,
  }) {
    return choosePhotoSuccess?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> file)? choosePhotoSuccess,
    TResult Function()? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (choosePhotoSuccess != null) {
      return choosePhotoSuccess(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) choosePhotoSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return choosePhotoSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? choosePhotoSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
  }) {
    return choosePhotoSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? choosePhotoSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (choosePhotoSuccess != null) {
      return choosePhotoSuccess(this);
    }
    return orElse();
  }
}

abstract class _Success implements UploadImageState {
  const factory _Success({required final List<File> file}) = _$_Success;

  List<File> get file;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$UploadImageStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'UploadImageState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<File> file) choosePhotoSuccess,
    required TResult Function() failure,
    required TResult Function() loading,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> file)? choosePhotoSuccess,
    TResult Function()? failure,
    TResult Function()? loading,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> file)? choosePhotoSuccess,
    TResult Function()? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) choosePhotoSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? choosePhotoSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? choosePhotoSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements UploadImageState {
  const factory _Failure() = _$_Failure;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$UploadImageStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'UploadImageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<File> file) choosePhotoSuccess,
    required TResult Function() failure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> file)? choosePhotoSuccess,
    TResult Function()? failure,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> file)? choosePhotoSuccess,
    TResult Function()? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) choosePhotoSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? choosePhotoSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? choosePhotoSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UploadImageState {
  const factory _Loading() = _$_Loading;
}
