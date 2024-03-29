// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String keyword, int resultCount, double radius)
        empty,
    required TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)
        result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String keyword, int resultCount, double radius)? empty,
    TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)?
        result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String keyword, int resultCount, double radius)? empty,
    TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)?
        result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Success value) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Success value)? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Success value)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
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
    return 'SearchState.initial()';
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
    required TResult Function(String keyword, int resultCount, double radius)
        empty,
    required TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)
        result,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String keyword, int resultCount, double radius)? empty,
    TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)?
        result,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String keyword, int resultCount, double radius)? empty,
    TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)?
        result,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_Success value) result,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Success value)? result,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Success value)? result,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
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
    return 'SearchState.loading()';
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
    required TResult Function(String keyword, int resultCount, double radius)
        empty,
    required TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)
        result,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String keyword, int resultCount, double radius)? empty,
    TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)?
        result,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String keyword, int resultCount, double radius)? empty,
    TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)?
        result,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_Success value) result,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Success value)? result,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Success value)? result,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SearchState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
  $Res call({String keyword, int resultCount, double radius});
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, (v) => _then(v as _$_Empty));

  @override
  _$_Empty get _value => super._value as _$_Empty;

  @override
  $Res call({
    Object? keyword = freezed,
    Object? resultCount = freezed,
    Object? radius = freezed,
  }) {
    return _then(_$_Empty(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty(
      {required this.keyword, required this.resultCount, required this.radius});

  @override
  final String keyword;
  @override
  final int resultCount;
  @override
  final double radius;

  @override
  String toString() {
    return 'SearchState.empty(keyword: $keyword, resultCount: $resultCount, radius: $radius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Empty &&
            const DeepCollectionEquality().equals(other.keyword, keyword) &&
            const DeepCollectionEquality()
                .equals(other.resultCount, resultCount) &&
            const DeepCollectionEquality().equals(other.radius, radius));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(keyword),
      const DeepCollectionEquality().hash(resultCount),
      const DeepCollectionEquality().hash(radius));

  @JsonKey(ignore: true)
  @override
  _$$_EmptyCopyWith<_$_Empty> get copyWith =>
      __$$_EmptyCopyWithImpl<_$_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String keyword, int resultCount, double radius)
        empty,
    required TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)
        result,
  }) {
    return empty(keyword, resultCount, radius);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String keyword, int resultCount, double radius)? empty,
    TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)?
        result,
  }) {
    return empty?.call(keyword, resultCount, radius);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String keyword, int resultCount, double radius)? empty,
    TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)?
        result,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(keyword, resultCount, radius);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Success value) result,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Success value)? result,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Success value)? result,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements SearchState {
  const factory _Empty(
      {required final String keyword,
      required final int resultCount,
      required final double radius}) = _$_Empty;

  String get keyword;
  int get resultCount;
  double get radius;
  @JsonKey(ignore: true)
  _$$_EmptyCopyWith<_$_Empty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call(
      {String keyword,
      int resultCount,
      double radius,
      List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
          providers});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? keyword = freezed,
    Object? resultCount = freezed,
    Object? radius = freezed,
    Object? providers = freezed,
  }) {
    return _then(_$_Success(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      providers: providers == freezed
          ? _value._providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(
      {required this.keyword,
      required this.resultCount,
      required this.radius,
      required final List<
              Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
          providers})
      : _providers = providers;

  @override
  final String keyword;
  @override
  final int resultCount;
  @override
  final double radius;
  final List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
      _providers;
  @override
  List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>> get providers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_providers);
  }

  @override
  String toString() {
    return 'SearchState.result(keyword: $keyword, resultCount: $resultCount, radius: $radius, providers: $providers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other.keyword, keyword) &&
            const DeepCollectionEquality()
                .equals(other.resultCount, resultCount) &&
            const DeepCollectionEquality().equals(other.radius, radius) &&
            const DeepCollectionEquality()
                .equals(other._providers, _providers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(keyword),
      const DeepCollectionEquality().hash(resultCount),
      const DeepCollectionEquality().hash(radius),
      const DeepCollectionEquality().hash(_providers));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String keyword, int resultCount, double radius)
        empty,
    required TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)
        result,
  }) {
    return result(keyword, resultCount, radius, providers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String keyword, int resultCount, double radius)? empty,
    TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)?
        result,
  }) {
    return result?.call(keyword, resultCount, radius, providers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String keyword, int resultCount, double radius)? empty,
    TResult Function(
            String keyword,
            int resultCount,
            double radius,
            List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
                providers)?
        result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(keyword, resultCount, radius, providers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Success value) result,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Success value)? result,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Success value)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class _Success implements SearchState {
  const factory _Success(
      {required final String keyword,
      required final int resultCount,
      required final double radius,
      required final List<
              Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
          providers}) = _$_Success;

  String get keyword;
  int get resultCount;
  double get radius;
  List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>> get providers;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}
