import 'package:bloc/bloc.dart';
import 'package:coin_aggregator/coins_list/domain/models/custom_coin_dto.dart';
import 'package:coin_aggregator/coins_list/domain/repository/coins_repository.dart';
import 'package:coin_aggregator/core/providers/providers.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_details_state.dart';
part 'coin_details_cubit.freezed.dart';

class CoinDetailsCubit extends Cubit<CoinDetailsState> {
  CoinDetailsCubit({
    required this.coin,
  }) : super(
          CoinDetailsState(
            coin: coin,
            isLoading: true,
          ),
        );

  final CustomCoinDto coin;

  Future<void> initialize() async {
    try {
      final _coin = await getIt<CoinsRepository>().getOLHC(coin);
      if (_coin != null) {
        emit(state.copyWith(coin: _coin, isLoading: false));
      }
    } on DioException catch (_) {
      emit(state.copyWith(hasError: true));
    }
  }
}
