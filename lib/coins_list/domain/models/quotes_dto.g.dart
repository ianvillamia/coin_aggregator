// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotes_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuotesDto _$QuotesDtoFromJson(Map<String, dynamic> json) => QuotesDto(
      btc: json['BTC'] == null
          ? null
          : BaseQuoteDto.fromJson(json['BTC'] as Map<String, dynamic>),
      usd: json['USD'] == null
          ? null
          : BaseQuoteDto.fromJson(json['USD'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuotesDtoToJson(QuotesDto instance) => <String, dynamic>{
      'BTC': instance.btc,
      'USD': instance.usd,
    };
