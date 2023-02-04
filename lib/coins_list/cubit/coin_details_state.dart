part of 'coin_details_cubit.dart';

@freezed
class CoinDetailsState with _$CoinDetailsState {
  factory CoinDetailsState({
    required CustomCoinDto coin,
    required bool isLoading,
    @Default(false) bool? hasError,
  }) = _CoinDetailsState;
}
