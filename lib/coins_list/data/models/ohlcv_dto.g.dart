// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ohlcv_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OHLCVDto _$OHLCVDtoFromJson(Map<String, dynamic> json) => OHLCVDto(
      timeOpen: json['time_open'] as String?,
      timeClose: json['time_close'] as String?,
      open: (json['open'] as num?)?.toDouble(),
      high: (json['high'] as num?)?.toDouble(),
      low: (json['low'] as num?)?.toDouble(),
      close: (json['close'] as num?)?.toDouble(),
      volume: json['volume'] as int?,
      marketCap: json['market_cap'] as int?,
    );

Map<String, dynamic> _$OHLCVDtoToJson(OHLCVDto instance) => <String, dynamic>{
      'time_open': instance.timeOpen,
      'time_close': instance.timeClose,
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'close': instance.close,
      'volume': instance.volume,
      'market_cap': instance.marketCap,
    };
