import 'package:bloc/bloc.dart';
import 'package:coin_aggregator/coins_list/domain/models/custom_coin_dto.dart';
import 'package:coin_aggregator/coins_list/domain/repository/coins_repository.dart';
import 'package:coin_aggregator/core/providers/providers.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coins_list_cubit.freezed.dart';
part 'coins_state.dart';

class CoinsCubit extends Cubit<CoinsState> {
  CoinsCubit() : super(const CoinsState.loading()) {
    _initialize();
  }
  Future<void> _initialize() async {
    try {
      final coins = await getIt<CoinsRepository>().getCoins();
      if (coins.isNotEmpty) {
        emit(CoinsState.finished(coins: coins));
      }
    } on DioError catch (_) {
      return emit(const CoinsState.error('Something went wrong'));
    }
  }
}
