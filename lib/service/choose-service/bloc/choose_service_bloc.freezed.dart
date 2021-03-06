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
    required TResult Function(ServiceData serviceData) newServiceRequested,
    required TResult Function(ServiceData serviceData, bool isSelected)
        serviceSelectChanged,
    required TResult Function(String recordId) detailRequestAccepted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function(ServiceData serviceData)? newServiceRequested,
    TResult Function(ServiceData serviceData, bool isSelected)?
        serviceSelectChanged,
    TResult Function(String recordId)? detailRequestAccepted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function(ServiceData serviceData)? newServiceRequested,
    TResult Function(ServiceData serviceData, bool isSelected)?
        serviceSelectChanged,
    TResult Function(String recordId)? detailRequestAccepted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ServiceListSubmitted value) serviceListSubmitted,
    required TResult Function(_NewServiceRequested value) newServiceRequested,
    required TResult Function(_ServiceSelectChanged value) serviceSelectChanged,
    required TResult Function(_DetailRequestAccepted value)
        detailRequestAccepted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(_NewServiceRequested value)? newServiceRequested,
    TResult Function(_ServiceSelectChanged value)? serviceSelectChanged,
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(_NewServiceRequested value)? newServiceRequested,
    TResult Function(_ServiceSelectChanged value)? serviceSelectChanged,
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
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
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ChooseServiceEventCopyWithImpl<$Res>
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
    return 'ChooseServiceEvent.started()';
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
    required TResult Function() serviceListSubmitted,
    required TResult Function(ServiceData serviceData) newServiceRequested,
    required TResult Function(ServiceData serviceData, bool isSelected)
        serviceSelectChanged,
    required TResult Function(String recordId) detailRequestAccepted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function(ServiceData serviceData)? newServiceRequested,
    TResult Function(ServiceData serviceData, bool isSelected)?
        serviceSelectChanged,
    TResult Function(String recordId)? detailRequestAccepted,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function(ServiceData serviceData)? newServiceRequested,
    TResult Function(ServiceData serviceData, bool isSelected)?
        serviceSelectChanged,
    TResult Function(String recordId)? detailRequestAccepted,
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
    required TResult Function(_ServiceListSubmitted value) serviceListSubmitted,
    required TResult Function(_NewServiceRequested value) newServiceRequested,
    required TResult Function(_ServiceSelectChanged value) serviceSelectChanged,
    required TResult Function(_DetailRequestAccepted value)
        detailRequestAccepted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(_NewServiceRequested value)? newServiceRequested,
    TResult Function(_ServiceSelectChanged value)? serviceSelectChanged,
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(_NewServiceRequested value)? newServiceRequested,
    TResult Function(_ServiceSelectChanged value)? serviceSelectChanged,
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChooseServiceEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ServiceListSubmittedCopyWith<$Res> {
  factory _$$_ServiceListSubmittedCopyWith(_$_ServiceListSubmitted value,
          $Res Function(_$_ServiceListSubmitted) then) =
      __$$_ServiceListSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServiceListSubmittedCopyWithImpl<$Res>
    extends _$ChooseServiceEventCopyWithImpl<$Res>
    implements _$$_ServiceListSubmittedCopyWith<$Res> {
  __$$_ServiceListSubmittedCopyWithImpl(_$_ServiceListSubmitted _value,
      $Res Function(_$_ServiceListSubmitted) _then)
      : super(_value, (v) => _then(v as _$_ServiceListSubmitted));

  @override
  _$_ServiceListSubmitted get _value => super._value as _$_ServiceListSubmitted;
}

/// @nodoc

class _$_ServiceListSubmitted implements _ServiceListSubmitted {
  const _$_ServiceListSubmitted();

  @override
  String toString() {
    return 'ChooseServiceEvent.serviceListSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServiceListSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() serviceListSubmitted,
    required TResult Function(ServiceData serviceData) newServiceRequested,
    required TResult Function(ServiceData serviceData, bool isSelected)
        serviceSelectChanged,
    required TResult Function(String recordId) detailRequestAccepted,
  }) {
    return serviceListSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function(ServiceData serviceData)? newServiceRequested,
    TResult Function(ServiceData serviceData, bool isSelected)?
        serviceSelectChanged,
    TResult Function(String recordId)? detailRequestAccepted,
  }) {
    return serviceListSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function(ServiceData serviceData)? newServiceRequested,
    TResult Function(ServiceData serviceData, bool isSelected)?
        serviceSelectChanged,
    TResult Function(String recordId)? detailRequestAccepted,
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
    required TResult Function(_Started value) started,
    required TResult Function(_ServiceListSubmitted value) serviceListSubmitted,
    required TResult Function(_NewServiceRequested value) newServiceRequested,
    required TResult Function(_ServiceSelectChanged value) serviceSelectChanged,
    required TResult Function(_DetailRequestAccepted value)
        detailRequestAccepted,
  }) {
    return serviceListSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(_NewServiceRequested value)? newServiceRequested,
    TResult Function(_ServiceSelectChanged value)? serviceSelectChanged,
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
  }) {
    return serviceListSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(_NewServiceRequested value)? newServiceRequested,
    TResult Function(_ServiceSelectChanged value)? serviceSelectChanged,
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
    required TResult orElse(),
  }) {
    if (serviceListSubmitted != null) {
      return serviceListSubmitted(this);
    }
    return orElse();
  }
}

abstract class _ServiceListSubmitted implements ChooseServiceEvent {
  const factory _ServiceListSubmitted() = _$_ServiceListSubmitted;
}

/// @nodoc
abstract class _$$_NewServiceRequestedCopyWith<$Res> {
  factory _$$_NewServiceRequestedCopyWith(_$_NewServiceRequested value,
          $Res Function(_$_NewServiceRequested) then) =
      __$$_NewServiceRequestedCopyWithImpl<$Res>;
  $Res call({ServiceData serviceData});

  $ServiceDataCopyWith<$Res> get serviceData;
}

/// @nodoc
class __$$_NewServiceRequestedCopyWithImpl<$Res>
    extends _$ChooseServiceEventCopyWithImpl<$Res>
    implements _$$_NewServiceRequestedCopyWith<$Res> {
  __$$_NewServiceRequestedCopyWithImpl(_$_NewServiceRequested _value,
      $Res Function(_$_NewServiceRequested) _then)
      : super(_value, (v) => _then(v as _$_NewServiceRequested));

  @override
  _$_NewServiceRequested get _value => super._value as _$_NewServiceRequested;

  @override
  $Res call({
    Object? serviceData = freezed,
  }) {
    return _then(_$_NewServiceRequested(
      serviceData == freezed
          ? _value.serviceData
          : serviceData // ignore: cast_nullable_to_non_nullable
              as ServiceData,
    ));
  }

  @override
  $ServiceDataCopyWith<$Res> get serviceData {
    return $ServiceDataCopyWith<$Res>(_value.serviceData, (value) {
      return _then(_value.copyWith(serviceData: value));
    });
  }
}

/// @nodoc

class _$_NewServiceRequested implements _NewServiceRequested {
  const _$_NewServiceRequested(this.serviceData);

  @override
  final ServiceData serviceData;

  @override
  String toString() {
    return 'ChooseServiceEvent.newServiceRequested(serviceData: $serviceData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewServiceRequested &&
            const DeepCollectionEquality()
                .equals(other.serviceData, serviceData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(serviceData));

  @JsonKey(ignore: true)
  @override
  _$$_NewServiceRequestedCopyWith<_$_NewServiceRequested> get copyWith =>
      __$$_NewServiceRequestedCopyWithImpl<_$_NewServiceRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() serviceListSubmitted,
    required TResult Function(ServiceData serviceData) newServiceRequested,
    required TResult Function(ServiceData serviceData, bool isSelected)
        serviceSelectChanged,
    required TResult Function(String recordId) detailRequestAccepted,
  }) {
    return newServiceRequested(serviceData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function(ServiceData serviceData)? newServiceRequested,
    TResult Function(ServiceData serviceData, bool isSelected)?
        serviceSelectChanged,
    TResult Function(String recordId)? detailRequestAccepted,
  }) {
    return newServiceRequested?.call(serviceData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function(ServiceData serviceData)? newServiceRequested,
    TResult Function(ServiceData serviceData, bool isSelected)?
        serviceSelectChanged,
    TResult Function(String recordId)? detailRequestAccepted,
    required TResult orElse(),
  }) {
    if (newServiceRequested != null) {
      return newServiceRequested(serviceData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ServiceListSubmitted value) serviceListSubmitted,
    required TResult Function(_NewServiceRequested value) newServiceRequested,
    required TResult Function(_ServiceSelectChanged value) serviceSelectChanged,
    required TResult Function(_DetailRequestAccepted value)
        detailRequestAccepted,
  }) {
    return newServiceRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(_NewServiceRequested value)? newServiceRequested,
    TResult Function(_ServiceSelectChanged value)? serviceSelectChanged,
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
  }) {
    return newServiceRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(_NewServiceRequested value)? newServiceRequested,
    TResult Function(_ServiceSelectChanged value)? serviceSelectChanged,
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
    required TResult orElse(),
  }) {
    if (newServiceRequested != null) {
      return newServiceRequested(this);
    }
    return orElse();
  }
}

abstract class _NewServiceRequested implements ChooseServiceEvent {
  const factory _NewServiceRequested(final ServiceData serviceData) =
      _$_NewServiceRequested;

  ServiceData get serviceData;
  @JsonKey(ignore: true)
  _$$_NewServiceRequestedCopyWith<_$_NewServiceRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServiceSelectChangedCopyWith<$Res> {
  factory _$$_ServiceSelectChangedCopyWith(_$_ServiceSelectChanged value,
          $Res Function(_$_ServiceSelectChanged) then) =
      __$$_ServiceSelectChangedCopyWithImpl<$Res>;
  $Res call({ServiceData serviceData, bool isSelected});

  $ServiceDataCopyWith<$Res> get serviceData;
}

/// @nodoc
class __$$_ServiceSelectChangedCopyWithImpl<$Res>
    extends _$ChooseServiceEventCopyWithImpl<$Res>
    implements _$$_ServiceSelectChangedCopyWith<$Res> {
  __$$_ServiceSelectChangedCopyWithImpl(_$_ServiceSelectChanged _value,
      $Res Function(_$_ServiceSelectChanged) _then)
      : super(_value, (v) => _then(v as _$_ServiceSelectChanged));

  @override
  _$_ServiceSelectChanged get _value => super._value as _$_ServiceSelectChanged;

  @override
  $Res call({
    Object? serviceData = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$_ServiceSelectChanged(
      serviceData: serviceData == freezed
          ? _value.serviceData
          : serviceData // ignore: cast_nullable_to_non_nullable
              as ServiceData,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ServiceDataCopyWith<$Res> get serviceData {
    return $ServiceDataCopyWith<$Res>(_value.serviceData, (value) {
      return _then(_value.copyWith(serviceData: value));
    });
  }
}

/// @nodoc

class _$_ServiceSelectChanged implements _ServiceSelectChanged {
  const _$_ServiceSelectChanged(
      {required this.serviceData, required this.isSelected});

  @override
  final ServiceData serviceData;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'ChooseServiceEvent.serviceSelectChanged(serviceData: $serviceData, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceSelectChanged &&
            const DeepCollectionEquality()
                .equals(other.serviceData, serviceData) &&
            const DeepCollectionEquality()
                .equals(other.isSelected, isSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(serviceData),
      const DeepCollectionEquality().hash(isSelected));

  @JsonKey(ignore: true)
  @override
  _$$_ServiceSelectChangedCopyWith<_$_ServiceSelectChanged> get copyWith =>
      __$$_ServiceSelectChangedCopyWithImpl<_$_ServiceSelectChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() serviceListSubmitted,
    required TResult Function(ServiceData serviceData) newServiceRequested,
    required TResult Function(ServiceData serviceData, bool isSelected)
        serviceSelectChanged,
    required TResult Function(String recordId) detailRequestAccepted,
  }) {
    return serviceSelectChanged(serviceData, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function(ServiceData serviceData)? newServiceRequested,
    TResult Function(ServiceData serviceData, bool isSelected)?
        serviceSelectChanged,
    TResult Function(String recordId)? detailRequestAccepted,
  }) {
    return serviceSelectChanged?.call(serviceData, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function(ServiceData serviceData)? newServiceRequested,
    TResult Function(ServiceData serviceData, bool isSelected)?
        serviceSelectChanged,
    TResult Function(String recordId)? detailRequestAccepted,
    required TResult orElse(),
  }) {
    if (serviceSelectChanged != null) {
      return serviceSelectChanged(serviceData, isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ServiceListSubmitted value) serviceListSubmitted,
    required TResult Function(_NewServiceRequested value) newServiceRequested,
    required TResult Function(_ServiceSelectChanged value) serviceSelectChanged,
    required TResult Function(_DetailRequestAccepted value)
        detailRequestAccepted,
  }) {
    return serviceSelectChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(_NewServiceRequested value)? newServiceRequested,
    TResult Function(_ServiceSelectChanged value)? serviceSelectChanged,
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
  }) {
    return serviceSelectChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(_NewServiceRequested value)? newServiceRequested,
    TResult Function(_ServiceSelectChanged value)? serviceSelectChanged,
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
    required TResult orElse(),
  }) {
    if (serviceSelectChanged != null) {
      return serviceSelectChanged(this);
    }
    return orElse();
  }
}

abstract class _ServiceSelectChanged implements ChooseServiceEvent {
  const factory _ServiceSelectChanged(
      {required final ServiceData serviceData,
      required final bool isSelected}) = _$_ServiceSelectChanged;

  ServiceData get serviceData;
  bool get isSelected;
  @JsonKey(ignore: true)
  _$$_ServiceSelectChangedCopyWith<_$_ServiceSelectChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DetailRequestAcceptedCopyWith<$Res> {
  factory _$$_DetailRequestAcceptedCopyWith(_$_DetailRequestAccepted value,
          $Res Function(_$_DetailRequestAccepted) then) =
      __$$_DetailRequestAcceptedCopyWithImpl<$Res>;
  $Res call({String recordId});
}

/// @nodoc
class __$$_DetailRequestAcceptedCopyWithImpl<$Res>
    extends _$ChooseServiceEventCopyWithImpl<$Res>
    implements _$$_DetailRequestAcceptedCopyWith<$Res> {
  __$$_DetailRequestAcceptedCopyWithImpl(_$_DetailRequestAccepted _value,
      $Res Function(_$_DetailRequestAccepted) _then)
      : super(_value, (v) => _then(v as _$_DetailRequestAccepted));

  @override
  _$_DetailRequestAccepted get _value =>
      super._value as _$_DetailRequestAccepted;

  @override
  $Res call({
    Object? recordId = freezed,
  }) {
    return _then(_$_DetailRequestAccepted(
      recordId: recordId == freezed
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DetailRequestAccepted implements _DetailRequestAccepted {
  const _$_DetailRequestAccepted({required this.recordId});

  @override
  final String recordId;

  @override
  String toString() {
    return 'ChooseServiceEvent.detailRequestAccepted(recordId: $recordId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailRequestAccepted &&
            const DeepCollectionEquality().equals(other.recordId, recordId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recordId));

  @JsonKey(ignore: true)
  @override
  _$$_DetailRequestAcceptedCopyWith<_$_DetailRequestAccepted> get copyWith =>
      __$$_DetailRequestAcceptedCopyWithImpl<_$_DetailRequestAccepted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() serviceListSubmitted,
    required TResult Function(ServiceData serviceData) newServiceRequested,
    required TResult Function(ServiceData serviceData, bool isSelected)
        serviceSelectChanged,
    required TResult Function(String recordId) detailRequestAccepted,
  }) {
    return detailRequestAccepted(recordId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function(ServiceData serviceData)? newServiceRequested,
    TResult Function(ServiceData serviceData, bool isSelected)?
        serviceSelectChanged,
    TResult Function(String recordId)? detailRequestAccepted,
  }) {
    return detailRequestAccepted?.call(recordId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? serviceListSubmitted,
    TResult Function(ServiceData serviceData)? newServiceRequested,
    TResult Function(ServiceData serviceData, bool isSelected)?
        serviceSelectChanged,
    TResult Function(String recordId)? detailRequestAccepted,
    required TResult orElse(),
  }) {
    if (detailRequestAccepted != null) {
      return detailRequestAccepted(recordId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ServiceListSubmitted value) serviceListSubmitted,
    required TResult Function(_NewServiceRequested value) newServiceRequested,
    required TResult Function(_ServiceSelectChanged value) serviceSelectChanged,
    required TResult Function(_DetailRequestAccepted value)
        detailRequestAccepted,
  }) {
    return detailRequestAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(_NewServiceRequested value)? newServiceRequested,
    TResult Function(_ServiceSelectChanged value)? serviceSelectChanged,
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
  }) {
    return detailRequestAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    TResult Function(_NewServiceRequested value)? newServiceRequested,
    TResult Function(_ServiceSelectChanged value)? serviceSelectChanged,
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
    required TResult orElse(),
  }) {
    if (detailRequestAccepted != null) {
      return detailRequestAccepted(this);
    }
    return orElse();
  }
}

abstract class _DetailRequestAccepted implements ChooseServiceEvent {
  const factory _DetailRequestAccepted({required final String recordId}) =
      _$_DetailRequestAccepted;

  String get recordId;
  @JsonKey(ignore: true)
  _$$_DetailRequestAcceptedCopyWith<_$_DetailRequestAccepted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChooseServiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(IList<ServiceData> services) success,
    required TResult Function(IList<ServiceData> services) orderModify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceData> services)? success,
    TResult Function(IList<ServiceData> services)? orderModify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceData> services)? success,
    TResult Function(IList<ServiceData> services)? orderModify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
    required TResult Function(_OrderModify value) orderModify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    TResult Function(_OrderModify value)? orderModify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    TResult Function(_OrderModify value)? orderModify,
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
    required TResult Function(IList<ServiceData> services) success,
    required TResult Function(IList<ServiceData> services) orderModify,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceData> services)? success,
    TResult Function(IList<ServiceData> services)? orderModify,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceData> services)? success,
    TResult Function(IList<ServiceData> services)? orderModify,
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
    required TResult Function(_OrderModify value) orderModify,
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
    TResult Function(_OrderModify value)? orderModify,
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
    TResult Function(_OrderModify value)? orderModify,
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
    required TResult Function(IList<ServiceData> services) success,
    required TResult Function(IList<ServiceData> services) orderModify,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceData> services)? success,
    TResult Function(IList<ServiceData> services)? orderModify,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceData> services)? success,
    TResult Function(IList<ServiceData> services)? orderModify,
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
    required TResult Function(_OrderModify value) orderModify,
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
    TResult Function(_OrderModify value)? orderModify,
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
    TResult Function(_OrderModify value)? orderModify,
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
    required TResult Function(IList<ServiceData> services) success,
    required TResult Function(IList<ServiceData> services) orderModify,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceData> services)? success,
    TResult Function(IList<ServiceData> services)? orderModify,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceData> services)? success,
    TResult Function(IList<ServiceData> services)? orderModify,
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
    required TResult Function(_OrderModify value) orderModify,
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
    TResult Function(_OrderModify value)? orderModify,
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
    TResult Function(_OrderModify value)? orderModify,
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
  $Res call({IList<ServiceData> services});
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
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as IList<ServiceData>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.services);

  @override
  final IList<ServiceData> services;

  @override
  String toString() {
    return 'ChooseServiceState.success(services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other.services, services));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(services));

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
    required TResult Function(IList<ServiceData> services) success,
    required TResult Function(IList<ServiceData> services) orderModify,
  }) {
    return success(services);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceData> services)? success,
    TResult Function(IList<ServiceData> services)? orderModify,
  }) {
    return success?.call(services);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceData> services)? success,
    TResult Function(IList<ServiceData> services)? orderModify,
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
    required TResult Function(_OrderModify value) orderModify,
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
    TResult Function(_OrderModify value)? orderModify,
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
    TResult Function(_OrderModify value)? orderModify,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ChooseServiceState {
  const factory _Success(final IList<ServiceData> services) = _$_Success;

  IList<ServiceData> get services;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OrderModifyCopyWith<$Res> {
  factory _$$_OrderModifyCopyWith(
          _$_OrderModify value, $Res Function(_$_OrderModify) then) =
      __$$_OrderModifyCopyWithImpl<$Res>;
  $Res call({IList<ServiceData> services});
}

/// @nodoc
class __$$_OrderModifyCopyWithImpl<$Res>
    extends _$ChooseServiceStateCopyWithImpl<$Res>
    implements _$$_OrderModifyCopyWith<$Res> {
  __$$_OrderModifyCopyWithImpl(
      _$_OrderModify _value, $Res Function(_$_OrderModify) _then)
      : super(_value, (v) => _then(v as _$_OrderModify));

  @override
  _$_OrderModify get _value => super._value as _$_OrderModify;

  @override
  $Res call({
    Object? services = freezed,
  }) {
    return _then(_$_OrderModify(
      services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as IList<ServiceData>,
    ));
  }
}

/// @nodoc

class _$_OrderModify implements _OrderModify {
  const _$_OrderModify(this.services);

  @override
  final IList<ServiceData> services;

  @override
  String toString() {
    return 'ChooseServiceState.orderModify(services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModify &&
            const DeepCollectionEquality().equals(other.services, services));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(services));

  @JsonKey(ignore: true)
  @override
  _$$_OrderModifyCopyWith<_$_OrderModify> get copyWith =>
      __$$_OrderModifyCopyWithImpl<_$_OrderModify>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(IList<ServiceData> services) success,
    required TResult Function(IList<ServiceData> services) orderModify,
  }) {
    return orderModify(services);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceData> services)? success,
    TResult Function(IList<ServiceData> services)? orderModify,
  }) {
    return orderModify?.call(services);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceData> services)? success,
    TResult Function(IList<ServiceData> services)? orderModify,
    required TResult orElse(),
  }) {
    if (orderModify != null) {
      return orderModify(services);
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
    required TResult Function(_OrderModify value) orderModify,
  }) {
    return orderModify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    TResult Function(_OrderModify value)? orderModify,
  }) {
    return orderModify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    TResult Function(_OrderModify value)? orderModify,
    required TResult orElse(),
  }) {
    if (orderModify != null) {
      return orderModify(this);
    }
    return orElse();
  }
}

abstract class _OrderModify implements ChooseServiceState {
  const factory _OrderModify(final IList<ServiceData> services) =
      _$_OrderModify;

  IList<ServiceData> get services;
  @JsonKey(ignore: true)
  _$$_OrderModifyCopyWith<_$_OrderModify> get copyWith =>
      throw _privateConstructorUsedError;
}
