// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_coin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomCoinDto _$CustomCoinDtoFromJson(Map<String, dynamic> json) =>
    CustomCoinDto(
      coin: json['coin'] == null
          ? null
          : CoinDto.fromJson(json['coin'] as Map<String, dynamic>),
      ohlcv: json['ohlcv'] == null
          ? null
          : OHLCVDto.fromJson(json['ohlcv'] as Map<String, dynamic>),
      ticker: json['ticker'] == null
          ? null
          : TickerDto.fromJson(json['ticker'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomCoinDtoToJson(CustomCoinDto instance) =>
    <String, dynamic>{
      'coin': instance.coin,
      'ohlcv': instance.ohlcv,
      'ticker': instance.ticker,
    };
