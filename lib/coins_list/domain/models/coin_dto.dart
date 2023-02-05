import 'package:freezed_annotation/freezed_annotation.dart';

part '../../domain/models/coin_dto.g.dart';

@JsonSerializable()
class CoinDto {
  const CoinDto({
    this.id,
    this.name,
    this.symbol,
    this.rank,
    this.isNew,
    this.type,
  });

  factory CoinDto.fromJson(Map<String, dynamic> json) {
    return _$CoinDtoFromJson(json);
  }
  Map<String, dynamic> toJson() => _$CoinDtoToJson(this);

  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'symbol')
  final String? symbol;

  @JsonKey(name: 'rank')
  final int? rank;

  @JsonKey(name: 'is_new')
  final bool? isNew;

  @JsonKey(name: 'is_active')
  final bool? type;
}
