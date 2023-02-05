// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_quote_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseQuoteDto _$BaseQuoteDtoFromJson(Map<String, dynamic> json) => BaseQuoteDto(
      price: json['price'] as num?,
      volume24h: json['volume_24h'] as num?,
      volume24hChange24h: json['volume_24h_change_24h'] as num?,
      marketCap: json['market_cap'] as int?,
      marketCapChange24h: json['market_cap_change_24h'] as num?,
      percentChange15m: json['percent_change_15m'] as num?,
      percentChange30m: json['percent_change_30m'] as num?,
      percentChange1h: json['percent_change_1h'] as num?,
      percentChange6h: json['percent_change_6h'] as num?,
      percentChange12h: json['percent_change_12h'] as num?,
      percentChange24h: json['percent_change_24h'] as num?,
      percentChange7d: json['percent_change_7d'] as num?,
      percentChange30d: json['percent_change_30d'] as num?,
      percentChange1y: json['percent_change_1y'] as num?,
      athPrice: json['ath_price'] as num?,
      athDate: json['ath_date'] as String?,
      percentFromPriceAth: json['percent_from_price_ath'] as num?,
    );

Map<String, dynamic> _$BaseQuoteDtoToJson(BaseQuoteDto instance) =>
    <String, dynamic>{
      'price': instance.price,
      'volume_24h': instance.volume24h,
      'volume_24h_change_24h': instance.volume24hChange24h,
      'market_cap': instance.marketCap,
      'market_cap_change_24h': instance.marketCapChange24h,
      'percent_change_15m': instance.percentChange15m,
      'percent_change_30m': instance.percentChange30m,
      'percent_change_1h': instance.percentChange1h,
      'percent_change_6h': instance.percentChange6h,
      'percent_change_12h': instance.percentChange12h,
      'percent_change_24h': instance.percentChange24h,
      'percent_change_7d': instance.percentChange7d,
      'percent_change_30d': instance.percentChange30d,
      'percent_change_1y': instance.percentChange1y,
      'ath_price': instance.athPrice,
      'ath_date': instance.athDate,
      'percent_from_price_ath': instance.percentFromPriceAth,
    };
