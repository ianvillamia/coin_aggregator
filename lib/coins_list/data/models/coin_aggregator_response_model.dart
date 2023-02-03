import 'package:coin_aggregator/coins_list/data/models/coin_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_aggregator_response_model.g.dart';

@JsonSerializable()
class CoinAggregatorResponseModel {
  const CoinAggregatorResponseModel({
    this.coins,
  });

  factory CoinAggregatorResponseModel.fromJson(Map<String, dynamic> json) {
    return _$CoinAggregatorResponseModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$CoinAggregatorResponseModelToJson(this);

  final List<CoinDto>? coins;
}
