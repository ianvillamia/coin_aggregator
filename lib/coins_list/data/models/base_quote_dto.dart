import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_quote_dto.g.dart';

@JsonSerializable()
class BaseQuoteDto {
  const BaseQuoteDto({
    this.price,
    this.volume24h,
    this.volume24hChange24h,
    this.marketCap,
    this.marketCapChange24h,
    this.percentChange15m,
    this.percentChange30m,
    this.percentChange1h,
    this.percentChange6h,
    this.percentChange12h,
    this.percentChange24h,
    this.percentChange7d,
    this.percentChange30d,
    this.percentChange1y,
    this.athPrice,
    this.athDate,
    this.percentFromPriceAth,
  });

  factory BaseQuoteDto.fromJson(Map<String, dynamic> json) {
    return _$BaseQuoteDtoFromJson(json);
  }
  Map<String, dynamic> toJson() => _$BaseQuoteDtoToJson(this);
  @JsonKey(name: 'price')
  final num? price;

  @JsonKey(name: 'volume_24h')
  final num? volume24h;

  @JsonKey(name: 'volume_24h_change_24h')
  final num? volume24hChange24h;

  @JsonKey(name: 'market_cap')
  final int? marketCap;

  @JsonKey(name: 'market_cap_change_24h')
  final num? marketCapChange24h;

  @JsonKey(name: 'percent_change_15m')
  final num? percentChange15m;

  @JsonKey(name: 'percent_change_30m')
  final num? percentChange30m;

  @JsonKey(name: 'percent_change_1h')
  final num? percentChange1h;

  @JsonKey(name: 'percent_change_6h')
  final num? percentChange6h;

  @JsonKey(name: 'percent_change_12h')
  final num? percentChange12h;

  @JsonKey(name: 'percent_change_24h')
  final num? percentChange24h;

  @JsonKey(name: 'percent_change_7d')
  final num? percentChange7d;

  @JsonKey(name: 'percent_change_30d')
  final num? percentChange30d;

  @JsonKey(name: 'percent_change_1y')
  final num? percentChange1y;

  @JsonKey(name: 'ath_price')
  final num? athPrice;

  @JsonKey(name: 'ath_date')
  final String? athDate;

  @JsonKey(name: 'percent_from_price_ath')
  final num? percentFromPriceAth;
}
