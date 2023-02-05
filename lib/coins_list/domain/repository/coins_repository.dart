import 'package:coin_aggregator/coins_list/domain/models/custom_coin_dto.dart';

abstract class CoinsRepository {
  Future<List<CustomCoinDto>> getCoins();

  Future<CustomCoinDto?> getOLHC(CustomCoinDto coin);
}
