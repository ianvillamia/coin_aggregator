part of 'coins_list_cubit.dart';

@freezed
class CoinsState with _$CoinsState {
  const factory CoinsState.loading() = _CoinsLoading;
  const factory CoinsState.finished({
    required List<CustomCoinDto> coins,
  }) = _CoinsFinished;
  const factory CoinsState.error(String? error) = _CoinsError;
}
