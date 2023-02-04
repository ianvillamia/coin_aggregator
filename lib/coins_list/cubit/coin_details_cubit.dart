import 'package:bloc/bloc.dart';
import 'package:coin_aggregator/coins_list/data/models/custom_coin_dto.dart';
import 'package:coin_aggregator/coins_list/data/repository/coins_repository.dart';
import 'package:coin_aggregator/core/providers/providers.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_details_state.dart';
part 'coin_details_cubit.freezed.dart';

class CoinDetailsCubit extends Cubit<CoinDetailsState> {
  CoinDetailsCubit({
    required this.coinDto,
  }) : super(
          CoinDetailsState(
            coin: coinDto,
            isLoading: true,
          ),
        );

  final CustomCoinDto coinDto;

  Future<void> initialize() async {
    try {
      final coin = await getIt<CoinsRepository>().getOLHC(coinDto);
      if (coin != null) {
        emit(state.copyWith(coin: coin, isLoading: false));
      }
    } on DioError catch (_) {
      emit(state.copyWith(hasError: true));
    }
  }
}
