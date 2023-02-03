import 'package:coin_aggregator/coins_list/data/models/coin_dto.dart';
import 'package:coin_aggregator/coins_list/data/models/ohlcv_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'coin_aggregator_service.g.dart';

@RestApi(baseUrl: 'https://api.coinpaprika.com/v1/')
abstract class CoinAggregatorApiService {
  factory CoinAggregatorApiService(
    Dio dio, {
    String baseUrl,
  }) = _CoinAggregatorApiService;

  /// calls https://api.coinpaprika.com/v1/coins
  @GET('coins')
  Future<HttpResponse<List<CoinDto>>> getCoins();

  /// calls https://api.coinpaprika.com/v1/coins/{coin_id}
  @GET('coins/{coin_id}/')
  Future<HttpResponse<List<CoinDto>>> getCoinDetails(
    @Path('coin_id') String coin,
  );

  /// calls https://api.coinpaprika.com/v1/coins/{coin_id}/ohlcv/latest/
  @GET('coins/{coin_id}/ohlcv/latest/')
  Future<HttpResponse<List<OHLCVDto>>> getCoinOHLC(
    @Path('coin_id') String coin,
  );
}
