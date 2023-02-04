import 'package:coin_aggregator/coins_list/data/models/coin_dto.dart';
import 'package:coin_aggregator/coins_list/data/models/custom_coin_dto.dart';
import 'package:coin_aggregator/coins_list/data/models/ticker_dto.dart';
import 'package:coin_aggregator/coins_list/data/repository/coins_repository.dart';
import 'package:coin_aggregator/coins_list/data/services/coin_aggregator_service.dart';
import 'package:coin_aggregator/core/providers/providers.dart';

class CoinsRepositoryImpl extends CoinsRepository {
  CoinsRepositoryImpl();

  @override
  Future<List<CustomCoinDto>> getCoins() async {
    try {
      const maxCount = 29; //total items should only be 30
      // ignore: prefer_final_locals
      var customCoins = <CustomCoinDto>[];
      final coinService = getIt<CoinAggregatorApiService>();

      final allCoins = await coinService.getAllCoins();

      final allTickers = await coinService.getAllTickers();
      // Get the top 30 coins
      final coins = allCoins.data.getRange(0, maxCount).toList();
      final tickers = allTickers.data.getRange(0, maxCount).toList();

      for (var i = 0; i < maxCount; i++) {
        final customCoin = await _getOLHC(
          coins[i],
          tickers[i],
        );
        customCoins.add(customCoin);
      }

      return customCoins;
    } catch (e) {
      rethrow;
    }
  }

  Future<CustomCoinDto> _getOLHC(CoinDto coin, TickerDto ticker) async {
    try {
      final coinService = getIt<CoinAggregatorApiService>();
      final olhv = await coinService.getCoinOHLC(coin.id ?? '');
      final customCoin = CustomCoinDto(
        coin: coin,
        ohlcv: olhv.data.first,
        ticker: ticker,
      );
      return customCoin;
    } catch (e) {
      rethrow;
    }
  }
}
