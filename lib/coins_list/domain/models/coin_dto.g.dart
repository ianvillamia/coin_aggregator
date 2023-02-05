// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinDto _$CoinDtoFromJson(Map<String, dynamic> json) => CoinDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
      rank: json['rank'] as int?,
      isNew: json['is_new'] as bool?,
      type: json['is_active'] as bool?,
    );

Map<String, dynamic> _$CoinDtoToJson(CoinDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'rank': instance.rank,
      'is_new': instance.isNew,
      'is_active': instance.type,
    };
