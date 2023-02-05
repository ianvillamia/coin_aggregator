import 'package:coin_aggregator/coins_list/cubit/coin_details_cubit.dart';
import 'package:coin_aggregator/coins_list/domain/models/custom_coin_dto.dart';
import 'package:coin_aggregator/core/app_text_styles.dart';
import 'package:coin_aggregator/core/global_widgets/current_date_time_widget.dart';
import 'package:coin_aggregator/l10n/l10n.dart';
import 'package:dice_bear/dice_bear.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinDetails extends StatefulWidget {
  const CoinDetails({
    super.key,
    required this.avatar,
  });

  final Avatar avatar;

  static const String routeName = '/coin-details';
  static ModalRoute<void> route({
    required Avatar avatar,
    required CustomCoinDto coin,
  }) {
    return MaterialPageRoute<void>(
      settings: const RouteSettings(name: routeName),
      builder: (_) => BlocProvider(
        create: (context) => CoinDetailsCubit(coin: coin),
        child: CoinDetails(avatar: avatar),
      ),
    );
  }

  @override
  State<CoinDetails> createState() => _CoinDetailsState();
}

class _CoinDetailsState extends State<CoinDetails> {
  @override
  void initState() {
    context.read<CoinDetailsCubit>().initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.coin_back,
          style: AppTextStyles.xL_w900,
        ),
        centerTitle: false,
      ),
      body: BlocBuilder<CoinDetailsCubit, CoinDetailsState>(
        builder: (context, state) {
          if (state.hasError ?? false) {
            return Center(
              child: Text(l10n.something_went_wrong),
            );
          } else if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 8),
                const CurrentDateTimeWidget(),
                Card(
                  elevation: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _firstSection(state.coin),
                      const SizedBox(height: 16),
                      _secondSection(l10n, state.coin),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  /// Contains coin image, coin name,symbol, price
  Widget _firstSection(CustomCoinDto coin) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 150,
          height: 150,
          child: widget.avatar.toImage(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              coin.coin?.name ?? '',
              style: AppTextStyles.L_w900,
            ),
            Text(
              coin.coin?.symbol ?? '',
              style: AppTextStyles.M_w900,
            ),
            Text(
              // ignore: lines_longer_than_80_chars
              '${coin.ticker?.symbol} ${coin.ticker?.quotes?.usd?.price}',
              style: AppTextStyles.L_w900,
            ),
          ],
        )
      ],
    );
  }

  /// Contains High,low,open,close,volume,marketCap
  Widget _secondSection(AppLocalizations l10n, CustomCoinDto coin) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTextRow(
          l10n.coin_high,
          coin.ohlcv?.high.toString() ?? '',
        ),
        _buildTextRow(
          l10n.coin_low,
          coin.ohlcv?.low.toString() ?? '',
        ),
        _buildTextRow(
          l10n.coin_open,
          coin.ohlcv?.low.toString() ?? '',
        ),
        _buildTextRow(
          l10n.coin_close,
          coin.ohlcv?.close.toString() ?? '',
        ),
        _buildTextRow(
          l10n.coin_volume,
          coin.ohlcv?.volume.toString() ?? '',
        ),
        _buildTextRow(
          l10n.coin_market_cap,
          coin.ohlcv?.marketCap.toString() ?? '',
        ),
      ],
    );
  }

  Widget _buildTextRow(
    String title,
    String value,
  ) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text(
            '$title : ',
            style: AppTextStyles.L_w900,
          ),
          Text(
            value,
            style: AppTextStyles.L,
          )
        ],
      ),
    );
  }
}
