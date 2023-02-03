// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_aggregator_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinAggregatorResponseModel _$CoinAggregatorResponseModelFromJson(
        Map<String, dynamic> json) =>
    CoinAggregatorResponseModel(
      coins: (json['coins'] as List<dynamic>?)
          ?.map((e) => CoinDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CoinAggregatorResponseModelToJson(
        CoinAggregatorResponseModel instance) =>
    <String, dynamic>{
      'coins': instance.coins,
    };
