// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'choose_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChooseServiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() serviceListSubmitted,
    required TResult Function() newServiceRequested,
    required TResult Function(String serviceId) serviceSelected,
    required TResult Function(String serviceId) serviceUnselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function()? newServiceRequested,
    TResult Function(String serviceId)? serviceSelected,
    TResult Function(String serviceId)? serviceUnselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function()? newServiceRequested,
    TResult Function(String serviceId)? serviceSelected,
    TResult Function(String serviceId)? serviceUnselected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ServiceListSubmitted value) serviceListSubmitted,
    required TResult Function(NewServiceRequested value) newServiceRequested,
    required TResult Function(ServiceSelected value) serviceSelected,
    required TResult Function(ServiceUnselected value) serviceUnselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(NewServiceRequested value)? newServiceRequested,
    TResult Function(ServiceSelected value)? serviceSelected,
    TResult Function(ServiceUnselected value)? serviceUnselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(NewServiceRequested value)? newServiceRequested,
    TResult Function(ServiceSelected value)? serviceSelected,
    TResult Function(ServiceUnselected value)? serviceUnselected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseServiceEventCopyWith<$Res> {
  factory $ChooseServiceEventCopyWith(
          ChooseServiceEvent value, $Res Function(ChooseServiceEvent) then) =
      _$ChooseServiceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChooseServiceEventCopyWithImpl<$Res>
    implements $ChooseServiceEventCopyWith<$Res> {
  _$ChooseServiceEventCopyWithImpl(this._value, this._then);

  final ChooseServiceEvent _value;
  // ignore: unused_field
  final $Res Function(ChooseServiceEvent) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$ChooseServiceEventCopyWithImpl<$Res>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, (v) => _then(v as _$Started));

  @override
  _$Started get _value => super._value as _$Started;
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'ChooseServiceEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() serviceListSubmitted,
    required TResult Function() newServiceRequested,
    required TResult Function(String serviceId) serviceSelected,
    required TResult Function(String serviceId) serviceUnselected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function()? newServiceRequested,
    TResult Function(String serviceId)? serviceSelected,
    TResult Function(String serviceId)? serviceUnselected,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function()? newServiceRequested,
    TResult Function(String serviceId)? serviceSelected,
    TResult Function(String serviceId)? serviceUnselected,
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
    required TResult Function(Started value) started,
    required TResult Function(ServiceListSubmitted value) serviceListSubmitted,
    required TResult Function(NewServiceRequested value) newServiceRequested,
    required TResult Function(ServiceSelected value) serviceSelected,
    required TResult Function(ServiceUnselected value) serviceUnselected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(NewServiceRequested value)? newServiceRequested,
    TResult Function(ServiceSelected value)? serviceSelected,
    TResult Function(ServiceUnselected value)? serviceUnselected,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(NewServiceRequested value)? newServiceRequested,
    TResult Function(ServiceSelected value)? serviceSelected,
    TResult Function(ServiceUnselected value)? serviceUnselected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements ChooseServiceEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$ServiceListSubmittedCopyWith<$Res> {
  factory _$$ServiceListSubmittedCopyWith(_$ServiceListSubmitted value,
          $Res Function(_$ServiceListSubmitted) then) =
      __$$ServiceListSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceListSubmittedCopyWithImpl<$Res>
    extends _$ChooseServiceEventCopyWithImpl<$Res>
    implements _$$ServiceListSubmittedCopyWith<$Res> {
  __$$ServiceListSubmittedCopyWithImpl(_$ServiceListSubmitted _value,
      $Res Function(_$ServiceListSubmitted) _then)
      : super(_value, (v) => _then(v as _$ServiceListSubmitted));

  @override
  _$ServiceListSubmitted get _value => super._value as _$ServiceListSubmitted;
}

/// @nodoc

class _$ServiceListSubmitted implements ServiceListSubmitted {
  const _$ServiceListSubmitted();

  @override
  String toString() {
    return 'ChooseServiceEvent.serviceListSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServiceListSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() serviceListSubmitted,
    required TResult Function() newServiceRequested,
    required TResult Function(String serviceId) serviceSelected,
    required TResult Function(String serviceId) serviceUnselected,
  }) {
    return serviceListSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function()? newServiceRequested,
    TResult Function(String serviceId)? serviceSelected,
    TResult Function(String serviceId)? serviceUnselected,
  }) {
    return serviceListSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function()? newServiceRequested,
    TResult Function(String serviceId)? serviceSelected,
    TResult Function(String serviceId)? serviceUnselected,
    required TResult orElse(),
  }) {
    if (serviceListSubmitted != null) {
      return serviceListSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ServiceListSubmitted value) serviceListSubmitted,
    required TResult Function(NewServiceRequested value) newServiceRequested,
    required TResult Function(ServiceSelected value) serviceSelected,
    required TResult Function(ServiceUnselected value) serviceUnselected,
  }) {
    return serviceListSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(NewServiceRequested value)? newServiceRequested,
    TResult Function(ServiceSelected value)? serviceSelected,
    TResult Function(ServiceUnselected value)? serviceUnselected,
  }) {
    return serviceListSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(NewServiceRequested value)? newServiceRequested,
    TResult Function(ServiceSelected value)? serviceSelected,
    TResult Function(ServiceUnselected value)? serviceUnselected,
    required TResult orElse(),
  }) {
    if (serviceListSubmitted != null) {
      return serviceListSubmitted(this);
    }
    return orElse();
  }
}

abstract class ServiceListSubmitted implements ChooseServiceEvent {
  const factory ServiceListSubmitted() = _$ServiceListSubmitted;
}

/// @nodoc
abstract class _$$NewServiceRequestedCopyWith<$Res> {
  factory _$$NewServiceRequestedCopyWith(_$NewServiceRequested value,
          $Res Function(_$NewServiceRequested) then) =
      __$$NewServiceRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewServiceRequestedCopyWithImpl<$Res>
    extends _$ChooseServiceEventCopyWithImpl<$Res>
    implements _$$NewServiceRequestedCopyWith<$Res> {
  __$$NewServiceRequestedCopyWithImpl(
      _$NewServiceRequested _value, $Res Function(_$NewServiceRequested) _then)
      : super(_value, (v) => _then(v as _$NewServiceRequested));

  @override
  _$NewServiceRequested get _value => super._value as _$NewServiceRequested;
}

/// @nodoc

class _$NewServiceRequested implements NewServiceRequested {
  const _$NewServiceRequested();

  @override
  String toString() {
    return 'ChooseServiceEvent.newServiceRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewServiceRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() serviceListSubmitted,
    required TResult Function() newServiceRequested,
    required TResult Function(String serviceId) serviceSelected,
    required TResult Function(String serviceId) serviceUnselected,
  }) {
    return newServiceRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function()? newServiceRequested,
    TResult Function(String serviceId)? serviceSelected,
    TResult Function(String serviceId)? serviceUnselected,
  }) {
    return newServiceRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function()? newServiceRequested,
    TResult Function(String serviceId)? serviceSelected,
    TResult Function(String serviceId)? serviceUnselected,
    required TResult orElse(),
  }) {
    if (newServiceRequested != null) {
      return newServiceRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ServiceListSubmitted value) serviceListSubmitted,
    required TResult Function(NewServiceRequested value) newServiceRequested,
    required TResult Function(ServiceSelected value) serviceSelected,
    required TResult Function(ServiceUnselected value) serviceUnselected,
  }) {
    return newServiceRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(NewServiceRequested value)? newServiceRequested,
    TResult Function(ServiceSelected value)? serviceSelected,
    TResult Function(ServiceUnselected value)? serviceUnselected,
  }) {
    return newServiceRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(NewServiceRequested value)? newServiceRequested,
    TResult Function(ServiceSelected value)? serviceSelected,
    TResult Function(ServiceUnselected value)? serviceUnselected,
    required TResult orElse(),
  }) {
    if (newServiceRequested != null) {
      return newServiceRequested(this);
    }
    return orElse();
  }
}

abstract class NewServiceRequested implements ChooseServiceEvent {
  const factory NewServiceRequested() = _$NewServiceRequested;
}

/// @nodoc
abstract class _$$ServiceSelectedCopyWith<$Res> {
  factory _$$ServiceSelectedCopyWith(
          _$ServiceSelected value, $Res Function(_$ServiceSelected) then) =
      __$$ServiceSelectedCopyWithImpl<$Res>;
  $Res call({String serviceId});
}

/// @nodoc
class __$$ServiceSelectedCopyWithImpl<$Res>
    extends _$ChooseServiceEventCopyWithImpl<$Res>
    implements _$$ServiceSelectedCopyWith<$Res> {
  __$$ServiceSelectedCopyWithImpl(
      _$ServiceSelected _value, $Res Function(_$ServiceSelected) _then)
      : super(_value, (v) => _then(v as _$ServiceSelected));

  @override
  _$ServiceSelected get _value => super._value as _$ServiceSelected;

  @override
  $Res call({
    Object? serviceId = freezed,
  }) {
    return _then(_$ServiceSelected(
      serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServiceSelected implements ServiceSelected {
  const _$ServiceSelected(this.serviceId);

  @override
  final String serviceId;

  @override
  String toString() {
    return 'ChooseServiceEvent.serviceSelected(serviceId: $serviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceSelected &&
            const DeepCollectionEquality().equals(other.serviceId, serviceId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(serviceId));

  @JsonKey(ignore: true)
  @override
  _$$ServiceSelectedCopyWith<_$ServiceSelected> get copyWith =>
      __$$ServiceSelectedCopyWithImpl<_$ServiceSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() serviceListSubmitted,
    required TResult Function() newServiceRequested,
    required TResult Function(String serviceId) serviceSelected,
    required TResult Function(String serviceId) serviceUnselected,
  }) {
    return serviceSelected(serviceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function()? newServiceRequested,
    TResult Function(String serviceId)? serviceSelected,
    TResult Function(String serviceId)? serviceUnselected,
  }) {
    return serviceSelected?.call(serviceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function()? newServiceRequested,
    TResult Function(String serviceId)? serviceSelected,
    TResult Function(String serviceId)? serviceUnselected,
    required TResult orElse(),
  }) {
    if (serviceSelected != null) {
      return serviceSelected(serviceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ServiceListSubmitted value) serviceListSubmitted,
    required TResult Function(NewServiceRequested value) newServiceRequested,
    required TResult Function(ServiceSelected value) serviceSelected,
    required TResult Function(ServiceUnselected value) serviceUnselected,
  }) {
    return serviceSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(NewServiceRequested value)? newServiceRequested,
    TResult Function(ServiceSelected value)? serviceSelected,
    TResult Function(ServiceUnselected value)? serviceUnselected,
  }) {
    return serviceSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(NewServiceRequested value)? newServiceRequested,
    TResult Function(ServiceSelected value)? serviceSelected,
    TResult Function(ServiceUnselected value)? serviceUnselected,
    required TResult orElse(),
  }) {
    if (serviceSelected != null) {
      return serviceSelected(this);
    }
    return orElse();
  }
}

abstract class ServiceSelected implements ChooseServiceEvent {
  const factory ServiceSelected(final String serviceId) = _$ServiceSelected;

  String get serviceId;
  @JsonKey(ignore: true)
  _$$ServiceSelectedCopyWith<_$ServiceSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceUnselectedCopyWith<$Res> {
  factory _$$ServiceUnselectedCopyWith(
          _$ServiceUnselected value, $Res Function(_$ServiceUnselected) then) =
      __$$ServiceUnselectedCopyWithImpl<$Res>;
  $Res call({String serviceId});
}

/// @nodoc
class __$$ServiceUnselectedCopyWithImpl<$Res>
    extends _$ChooseServiceEventCopyWithImpl<$Res>
    implements _$$ServiceUnselectedCopyWith<$Res> {
  __$$ServiceUnselectedCopyWithImpl(
      _$ServiceUnselected _value, $Res Function(_$ServiceUnselected) _then)
      : super(_value, (v) => _then(v as _$ServiceUnselected));

  @override
  _$ServiceUnselected get _value => super._value as _$ServiceUnselected;

  @override
  $Res call({
    Object? serviceId = freezed,
  }) {
    return _then(_$ServiceUnselected(
      serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServiceUnselected implements ServiceUnselected {
  const _$ServiceUnselected(this.serviceId);

  @override
  final String serviceId;

  @override
  String toString() {
    return 'ChooseServiceEvent.serviceUnselected(serviceId: $serviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceUnselected &&
            const DeepCollectionEquality().equals(other.serviceId, serviceId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(serviceId));

  @JsonKey(ignore: true)
  @override
  _$$ServiceUnselectedCopyWith<_$ServiceUnselected> get copyWith =>
      __$$ServiceUnselectedCopyWithImpl<_$ServiceUnselected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() serviceListSubmitted,
    required TResult Function() newServiceRequested,
    required TResult Function(String serviceId) serviceSelected,
    required TResult Function(String serviceId) serviceUnselected,
  }) {
    return serviceUnselected(serviceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function()? newServiceRequested,
    TResult Function(String serviceId)? serviceSelected,
    TResult Function(String serviceId)? serviceUnselected,
  }) {
    return serviceUnselected?.call(serviceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function()? newServiceRequested,
    TResult Function(String serviceId)? serviceSelected,
    TResult Function(String serviceId)? serviceUnselected,
    required TResult orElse(),
  }) {
    if (serviceUnselected != null) {
      return serviceUnselected(serviceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ServiceListSubmitted value) serviceListSubmitted,
    required TResult Function(NewServiceRequested value) newServiceRequested,
    required TResult Function(ServiceSelected value) serviceSelected,
    required TResult Function(ServiceUnselected value) serviceUnselected,
  }) {
    return serviceUnselected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(NewServiceRequested value)? newServiceRequested,
    TResult Function(ServiceSelected value)? serviceSelected,
    TResult Function(ServiceUnselected value)? serviceUnselected,
  }) {
    return serviceUnselected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(NewServiceRequested value)? newServiceRequested,
    TResult Function(ServiceSelected value)? serviceSelected,
    TResult Function(ServiceUnselected value)? serviceUnselected,
    required TResult orElse(),
  }) {
    if (serviceUnselected != null) {
      return serviceUnselected(this);
    }
    return orElse();
  }
}

abstract class ServiceUnselected implements ChooseServiceEvent {
  const factory ServiceUnselected(final String serviceId) = _$ServiceUnselected;

  String get serviceId;
  @JsonKey(ignore: true)
  _$$ServiceUnselectedCopyWith<_$ServiceUnselected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChooseServiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(List<ServiceData> services) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<ServiceData> services)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<ServiceData> services)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseServiceStateCopyWith<$Res> {
  factory $ChooseServiceStateCopyWith(
          ChooseServiceState value, $Res Function(ChooseServiceState) then) =
      _$ChooseServiceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChooseServiceStateCopyWithImpl<$Res>
    implements $ChooseServiceStateCopyWith<$Res> {
  _$ChooseServiceStateCopyWithImpl(this._value, this._then);

  final ChooseServiceState _value;
  // ignore: unused_field
  final $Res Function(ChooseServiceState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChooseServiceStateCopyWithImpl<$Res>
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
    return 'ChooseServiceState.initial()';
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
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(List<ServiceData> services) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<ServiceData> services)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<ServiceData> services)? success,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChooseServiceState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ChooseServiceStateCopyWithImpl<$Res>
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
    return 'ChooseServiceState.loading()';
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
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(List<ServiceData> services) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<ServiceData> services)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<ServiceData> services)? success,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChooseServiceState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$ChooseServiceStateCopyWithImpl<$Res>
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
    return 'ChooseServiceState.failure()';
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
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(List<ServiceData> services) success,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<ServiceData> services)? success,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<ServiceData> services)? success,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ChooseServiceState {
  const factory _Failure() = _$_Failure;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call({List<ServiceData> services});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$ChooseServiceStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? services = freezed,
  }) {
    return _then(_$_Success(
      services == freezed
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceData>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(final List<ServiceData> services) : _services = services;

  final List<ServiceData> _services;
  @override
  List<ServiceData> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ChooseServiceState.success(services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(List<ServiceData> services) success,
  }) {
    return success(services);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<ServiceData> services)? success,
  }) {
    return success?.call(services);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<ServiceData> services)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(services);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ChooseServiceState {
  const factory _Success(final List<ServiceData> services) = _$_Success;

  List<ServiceData> get services;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}