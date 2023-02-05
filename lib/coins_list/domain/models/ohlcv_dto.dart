import 'package:freezed_annotation/freezed_annotation.dart';

part '../../domain/models/ohlcv_dto.g.dart';

@JsonSerializable()
class OHLCVDto {
  const OHLCVDto({
    this.timeOpen,
    this.timeClose,
    this.open,
    this.high,
    this.low,
    this.close,
    this.volume,
    this.marketCap,
  });

  factory OHLCVDto.fromJson(Map<String, dynamic> json) {
    return _$OHLCVDtoFromJson(json);
  }
  Map<String, dynamic> toJson() => _$OHLCVDtoToJson(this);

  @JsonKey(name: 'time_open')
  final String? timeOpen;

  @JsonKey(name: 'time_close')
  final String? timeClose;

  @JsonKey(name: 'open')
  final double? open;

  @JsonKey(name: 'high')
  final double? high;

  @JsonKey(name: 'low')
  final double? low;

  @JsonKey(name: 'close')
  final double? close;

  @JsonKey(name: 'volume')
  final int? volume;

  @JsonKey(name: 'market_cap')
  final int? marketCap;
}
