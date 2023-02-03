// ignore_for_file: one_member_abstracts

import 'package:coin_aggregator/coins_list/data/models/custom_coin_dto.dart';

abstract class CoinsRepository {
  Future<List<CustomCoinDto>> getCoins();
}
