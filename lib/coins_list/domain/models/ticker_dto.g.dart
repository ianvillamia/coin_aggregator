// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticker_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TickerDto _$TickerDtoFromJson(Map<String, dynamic> json) => TickerDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
      rank: json['rank'] as int?,
      circulatingSupply: json['circulating_supply'] as int?,
      totalSupply: json['total_supply'] as int?,
      maxSupply: json['max_supply'] as int?,
      betaValue: (json['beta_value'] as num?)?.toDouble(),
      lastUpdated: json['last_updated'] as String?,
      quotes: json['quotes'] == null
          ? null
          : QuotesDto.fromJson(json['quotes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TickerDtoToJson(TickerDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'rank': instance.rank,
      'circulating_supply': instance.circulatingSupply,
      'total_supply': instance.totalSupply,
      'max_supply': instance.maxSupply,
      'beta_value': instance.betaValue,
      'last_updated': instance.lastUpdated,
      'quotes': instance.quotes,
    };
