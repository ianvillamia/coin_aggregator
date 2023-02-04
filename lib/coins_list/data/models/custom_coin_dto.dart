import 'package:coin_aggregator/coins_list/data/models/coin_dto.dart';
import 'package:coin_aggregator/coins_list/data/models/ohlcv_dto.dart';
import 'package:coin_aggregator/coins_list/data/models/ticker_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_coin_dto.g.dart';

@JsonSerializable()
class CustomCoinDto {
  const CustomCoinDto({
    this.coin,
    this.ohlcv,
    this.ticker,
  });

  Map<String, dynamic> toJson() => _$CustomCoinDtoToJson(this);

  final CoinDto? coin;
  final OHLCVDto? ohlcv;
  final TickerDto? ticker;

  CustomCoinDto copyWith({
    CoinDto? coin,
    OHLCVDto? ohlcv,
    TickerDto? ticker,
  }) {
    return CustomCoinDto(
      coin: coin ?? this.coin,
      ohlcv: ohlcv ?? this.ohlcv,
      ticker: ticker ?? this.ticker,
    );
  }
}
