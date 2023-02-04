import 'package:coin_aggregator/coins_list/data/models/base_quote_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quotes_dto.g.dart';

@JsonSerializable()
class QuotesDto {
  const QuotesDto({
    this.btc,
    this.usd,
  });

  factory QuotesDto.fromJson(Map<String, dynamic> json) {
    return _$QuotesDtoFromJson(json);
  }
  Map<String, dynamic> toJson() => _$QuotesDtoToJson(this);

  @JsonKey(name: 'BTC')
  final BaseQuoteDto? btc;

  @JsonKey(name: 'USD')
  final BaseQuoteDto? usd;
}
