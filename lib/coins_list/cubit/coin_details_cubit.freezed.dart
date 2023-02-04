// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coin_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoinDetailsState {
  CustomCoinDto get coin => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoinDetailsStateCopyWith<CoinDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinDetailsStateCopyWith<$Res> {
  factory $CoinDetailsStateCopyWith(
          CoinDetailsState value, $Res Function(CoinDetailsState) then) =
      _$CoinDetailsStateCopyWithImpl<$Res, CoinDetailsState>;
  @useResult
  $Res call({CustomCoinDto coin, bool isLoading, bool? hasError});
}

/// @nodoc
class _$CoinDetailsStateCopyWithImpl<$Res, $Val extends CoinDetailsState>
    implements $CoinDetailsStateCopyWith<$Res> {
  _$CoinDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coin = null,
    Object? isLoading = null,
    Object? hasError = freezed,
  }) {
    return _then(_value.copyWith(
      coin: null == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as CustomCoinDto,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: freezed == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinDetailsStateCopyWith<$Res>
    implements $CoinDetailsStateCopyWith<$Res> {
  factory _$$_CoinDetailsStateCopyWith(
          _$_CoinDetailsState value, $Res Function(_$_CoinDetailsState) then) =
      __$$_CoinDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomCoinDto coin, bool isLoading, bool? hasError});
}

/// @nodoc
class __$$_CoinDetailsStateCopyWithImpl<$Res>
    extends _$CoinDetailsStateCopyWithImpl<$Res, _$_CoinDetailsState>
    implements _$$_CoinDetailsStateCopyWith<$Res> {
  __$$_CoinDetailsStateCopyWithImpl(
      _$_CoinDetailsState _value, $Res Function(_$_CoinDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coin = null,
    Object? isLoading = null,
    Object? hasError = freezed,
  }) {
    return _then(_$_CoinDetailsState(
      coin: null == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as CustomCoinDto,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: freezed == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_CoinDetailsState implements _CoinDetailsState {
  _$_CoinDetailsState(
      {required this.coin, required this.isLoading, this.hasError = false});

  @override
  final CustomCoinDto coin;
  @override
  final bool isLoading;
  @override
  @JsonKey()
  final bool? hasError;

  @override
  String toString() {
    return 'CoinDetailsState(coin: $coin, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinDetailsState &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coin, isLoading, hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinDetailsStateCopyWith<_$_CoinDetailsState> get copyWith =>
      __$$_CoinDetailsStateCopyWithImpl<_$_CoinDetailsState>(this, _$identity);
}

abstract class _CoinDetailsState implements CoinDetailsState {
  factory _CoinDetailsState(
      {required final CustomCoinDto coin,
      required final bool isLoading,
      final bool? hasError}) = _$_CoinDetailsState;

  @override
  CustomCoinDto get coin;
  @override
  bool get isLoading;
  @override
  bool? get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_CoinDetailsStateCopyWith<_$_CoinDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
