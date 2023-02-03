// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coins_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoinsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CustomCoinDto> coins) finished,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CustomCoinDto> coins)? finished,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CustomCoinDto> coins)? finished,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoinsLoading value) loading,
    required TResult Function(_CoinsFinished value) finished,
    required TResult Function(_CoinsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoinsLoading value)? loading,
    TResult? Function(_CoinsFinished value)? finished,
    TResult? Function(_CoinsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoinsLoading value)? loading,
    TResult Function(_CoinsFinished value)? finished,
    TResult Function(_CoinsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinsStateCopyWith<$Res> {
  factory $CoinsStateCopyWith(
          CoinsState value, $Res Function(CoinsState) then) =
      _$CoinsStateCopyWithImpl<$Res, CoinsState>;
}

/// @nodoc
class _$CoinsStateCopyWithImpl<$Res, $Val extends CoinsState>
    implements $CoinsStateCopyWith<$Res> {
  _$CoinsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CoinsLoadingCopyWith<$Res> {
  factory _$$_CoinsLoadingCopyWith(
          _$_CoinsLoading value, $Res Function(_$_CoinsLoading) then) =
      __$$_CoinsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CoinsLoadingCopyWithImpl<$Res>
    extends _$CoinsStateCopyWithImpl<$Res, _$_CoinsLoading>
    implements _$$_CoinsLoadingCopyWith<$Res> {
  __$$_CoinsLoadingCopyWithImpl(
      _$_CoinsLoading _value, $Res Function(_$_CoinsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CoinsLoading implements _CoinsLoading {
  const _$_CoinsLoading();

  @override
  String toString() {
    return 'CoinsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CoinsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CustomCoinDto> coins) finished,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CustomCoinDto> coins)? finished,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CustomCoinDto> coins)? finished,
    TResult Function(String? error)? error,
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
    required TResult Function(_CoinsLoading value) loading,
    required TResult Function(_CoinsFinished value) finished,
    required TResult Function(_CoinsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoinsLoading value)? loading,
    TResult? Function(_CoinsFinished value)? finished,
    TResult? Function(_CoinsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoinsLoading value)? loading,
    TResult Function(_CoinsFinished value)? finished,
    TResult Function(_CoinsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CoinsLoading implements CoinsState {
  const factory _CoinsLoading() = _$_CoinsLoading;
}

/// @nodoc
abstract class _$$_CoinsFinishedCopyWith<$Res> {
  factory _$$_CoinsFinishedCopyWith(
          _$_CoinsFinished value, $Res Function(_$_CoinsFinished) then) =
      __$$_CoinsFinishedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CustomCoinDto> coins});
}

/// @nodoc
class __$$_CoinsFinishedCopyWithImpl<$Res>
    extends _$CoinsStateCopyWithImpl<$Res, _$_CoinsFinished>
    implements _$$_CoinsFinishedCopyWith<$Res> {
  __$$_CoinsFinishedCopyWithImpl(
      _$_CoinsFinished _value, $Res Function(_$_CoinsFinished) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_$_CoinsFinished(
      coins: null == coins
          ? _value._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CustomCoinDto>,
    ));
  }
}

/// @nodoc

class _$_CoinsFinished implements _CoinsFinished {
  const _$_CoinsFinished({required final List<CustomCoinDto> coins})
      : _coins = coins;

  final List<CustomCoinDto> _coins;
  @override
  List<CustomCoinDto> get coins {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coins);
  }

  @override
  String toString() {
    return 'CoinsState.finished(coins: $coins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinsFinished &&
            const DeepCollectionEquality().equals(other._coins, _coins));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_coins));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinsFinishedCopyWith<_$_CoinsFinished> get copyWith =>
      __$$_CoinsFinishedCopyWithImpl<_$_CoinsFinished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CustomCoinDto> coins) finished,
    required TResult Function(String? error) error,
  }) {
    return finished(coins);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CustomCoinDto> coins)? finished,
    TResult? Function(String? error)? error,
  }) {
    return finished?.call(coins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CustomCoinDto> coins)? finished,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(coins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoinsLoading value) loading,
    required TResult Function(_CoinsFinished value) finished,
    required TResult Function(_CoinsError value) error,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoinsLoading value)? loading,
    TResult? Function(_CoinsFinished value)? finished,
    TResult? Function(_CoinsError value)? error,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoinsLoading value)? loading,
    TResult Function(_CoinsFinished value)? finished,
    TResult Function(_CoinsError value)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _CoinsFinished implements CoinsState {
  const factory _CoinsFinished({required final List<CustomCoinDto> coins}) =
      _$_CoinsFinished;

  List<CustomCoinDto> get coins;
  @JsonKey(ignore: true)
  _$$_CoinsFinishedCopyWith<_$_CoinsFinished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CoinsErrorCopyWith<$Res> {
  factory _$$_CoinsErrorCopyWith(
          _$_CoinsError value, $Res Function(_$_CoinsError) then) =
      __$$_CoinsErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_CoinsErrorCopyWithImpl<$Res>
    extends _$CoinsStateCopyWithImpl<$Res, _$_CoinsError>
    implements _$$_CoinsErrorCopyWith<$Res> {
  __$$_CoinsErrorCopyWithImpl(
      _$_CoinsError _value, $Res Function(_$_CoinsError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_CoinsError(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CoinsError implements _CoinsError {
  const _$_CoinsError(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'CoinsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinsError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinsErrorCopyWith<_$_CoinsError> get copyWith =>
      __$$_CoinsErrorCopyWithImpl<_$_CoinsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CustomCoinDto> coins) finished,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CustomCoinDto> coins)? finished,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CustomCoinDto> coins)? finished,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoinsLoading value) loading,
    required TResult Function(_CoinsFinished value) finished,
    required TResult Function(_CoinsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoinsLoading value)? loading,
    TResult? Function(_CoinsFinished value)? finished,
    TResult? Function(_CoinsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoinsLoading value)? loading,
    TResult Function(_CoinsFinished value)? finished,
    TResult Function(_CoinsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CoinsError implements CoinsState {
  const factory _CoinsError(final String? error) = _$_CoinsError;

  String? get error;
  @JsonKey(ignore: true)
  _$$_CoinsErrorCopyWith<_$_CoinsError> get copyWith =>
      throw _privateConstructorUsedError;
}
