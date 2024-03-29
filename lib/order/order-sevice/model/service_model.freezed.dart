// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServiceModel {
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get providerID => throw _privateConstructorUsedError;
  String get consumerID => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceModelCopyWith<ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
          ServiceModel value, $Res Function(ServiceModel) then) =
      _$ServiceModelCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int price,
      String providerID,
      String consumerID,
      int status});
}

/// @nodoc
class _$ServiceModelCopyWithImpl<$Res> implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  final ServiceModel _value;
  // ignore: unused_field
  final $Res Function(ServiceModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? providerID = freezed,
    Object? consumerID = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      providerID: providerID == freezed
          ? _value.providerID
          : providerID // ignore: cast_nullable_to_non_nullable
              as String,
      consumerID: consumerID == freezed
          ? _value.consumerID
          : consumerID // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ServiceModelCopyWith<$Res>
    implements $ServiceModelCopyWith<$Res> {
  factory _$$_ServiceModelCopyWith(
          _$_ServiceModel value, $Res Function(_$_ServiceModel) then) =
      __$$_ServiceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      int price,
      String providerID,
      String consumerID,
      int status});
}

/// @nodoc
class __$$_ServiceModelCopyWithImpl<$Res>
    extends _$ServiceModelCopyWithImpl<$Res>
    implements _$$_ServiceModelCopyWith<$Res> {
  __$$_ServiceModelCopyWithImpl(
      _$_ServiceModel _value, $Res Function(_$_ServiceModel) _then)
      : super(_value, (v) => _then(v as _$_ServiceModel));

  @override
  _$_ServiceModel get _value => super._value as _$_ServiceModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? providerID = freezed,
    Object? consumerID = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ServiceModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      providerID: providerID == freezed
          ? _value.providerID
          : providerID // ignore: cast_nullable_to_non_nullable
              as String,
      consumerID: consumerID == freezed
          ? _value.consumerID
          : consumerID // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ServiceModel implements _ServiceModel {
  const _$_ServiceModel(
      {required this.name,
      required this.price,
      required this.providerID,
      required this.consumerID,
      required this.status});

  @override
  final String name;
  @override
  final int price;
  @override
  final String providerID;
  @override
  final String consumerID;
  @override
  final int status;

  @override
  String toString() {
    return 'ServiceModel(name: $name, price: $price, providerID: $providerID, consumerID: $consumerID, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.providerID, providerID) &&
            const DeepCollectionEquality()
                .equals(other.consumerID, consumerID) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(providerID),
      const DeepCollectionEquality().hash(consumerID),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      __$$_ServiceModelCopyWithImpl<_$_ServiceModel>(this, _$identity);
}

abstract class _ServiceModel implements ServiceModel {
  const factory _ServiceModel(
      {required final String name,
      required final int price,
      required final String providerID,
      required final String consumerID,
      required final int status}) = _$_ServiceModel;

  @override
  String get name;
  @override
  int get price;
  @override
  String get providerID;
  @override
  String get consumerID;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
