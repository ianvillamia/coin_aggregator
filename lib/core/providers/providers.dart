import 'package:coin_aggregator/coins_list/data/repository/coins_repository.dart';
import 'package:coin_aggregator/coins_list/data/repository/coins_repository_impl.dart';
import 'package:coin_aggregator/coins_list/data/services/coin_aggregator_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupProviders() {
  final _dio = Dio();
  getIt
    ..registerSingleton<CoinAggregatorApiService>(
      CoinAggregatorApiService(_dio),
    )
    ..registerLazySingleton<CoinsRepository>(CoinsRepositoryImpl.new);
}
