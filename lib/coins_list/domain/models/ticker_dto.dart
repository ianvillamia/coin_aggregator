import 'package:coin_aggregator/coins_list/domain/models/quotes_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../domain/models/ticker_dto.g.dart';

@JsonSerializable()
class TickerDto {
  const TickerDto({
    this.id,
    this.name,
    this.symbol,
    this.rank,
    this.circulatingSupply,
    this.totalSupply,
    this.maxSupply,
    this.betaValue,
    this.lastUpdated,
    this.quotes,
  });

  factory TickerDto.fromJson(Map<String, dynamic> json) {
    return _$TickerDtoFromJson(json);
  }
  Map<String, dynamic> toJson() => _$TickerDtoToJson(this);

  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'symbol')
  final String? symbol;

  @JsonKey(name: 'rank')
  final int? rank;

  @JsonKey(name: 'circulating_supply')
  final int? circulatingSupply;

  @JsonKey(name: 'total_supply')
  final int? totalSupply;

  @JsonKey(name: 'max_supply')
  final int? maxSupply;

  @JsonKey(name: 'beta_value')
  final double? betaValue;

  @JsonKey(name: 'last_updated')
  final String? lastUpdated;

  @JsonKey(name: 'quotes')
  final QuotesDto? quotes;
}
