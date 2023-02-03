import 'package:coin_aggregator/coins_list/data/models/custom_coin_dto.dart';
import 'package:coin_aggregator/coins_list/data/repository/coins_repository.dart';
import 'package:coin_aggregator/coins_list/data/services/coin_aggregator_service.dart';
import 'package:coin_aggregator/core/providers/providers.dart';

class CoinsRepositoryImpl extends CoinsRepository {
  CoinsRepositoryImpl();

  @override
  Future<List<CustomCoinDto>> getCoins() async {
    try {
      // ignore: prefer_final_locals
      var customCoins = <CustomCoinDto>[];
      final coinService = getIt<CoinAggregatorApiService>();
      final response = await coinService.getCoins();
      //? If wanted all data manipulation should be done here but since the
      //? response is simple lets keep it as is :)
      if (response.response.statusCode == 200) {
        for (final coin in response.data) {
          final olhv = await coinService.getCoinOHLC(coin.id ?? '');
          final customCoin = CustomCoinDto(
            coin: coin,
            ohlcv: olhv.data.first,
          );
          customCoins.add(customCoin);
        }

        return customCoins;
      }
      return customCoins;
    } catch (e) {
      rethrow;
    }
  }
}
