// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ohlcv_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OHLCVDto _$OHLCVDtoFromJson(Map<String, dynamic> json) => OHLCVDto(
      timeOpen: json['timeOpen'] as String?,
      timeClose: json['timeClose'] as String?,
      open: (json['open'] as num?)?.toDouble(),
      high: (json['high'] as num?)?.toDouble(),
      low: (json['low'] as num?)?.toDouble(),
      close: (json['close'] as num?)?.toDouble(),
      volume: json['volume'] as int?,
      marketCap: json['marketCap'] as int?,
    );

Map<String, dynamic> _$OHLCVDtoToJson(OHLCVDto instance) => <String, dynamic>{
      'timeOpen': instance.timeOpen,
      'timeClose': instance.timeClose,
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'close': instance.close,
      'volume': instance.volume,
      'marketCap': instance.marketCap,
    };
