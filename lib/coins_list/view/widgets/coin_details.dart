import 'package:coin_aggregator/coins_list/data/models/custom_coin_dto.dart';
import 'package:coin_aggregator/core/app_text_styles.dart';
import 'package:coin_aggregator/core/global_widgets/current_date_time_widget.dart';
import 'package:coin_aggregator/l10n/l10n.dart';
import 'package:dice_bear/dice_bear.dart';
import 'package:flutter/material.dart';

class CoinDetails extends StatelessWidget {
  const CoinDetails({
    super.key,
    required this.coin,
    required this.avatar,
  });

  final CustomCoinDto coin;
  final Avatar avatar;

  static const String routeName = '/coin-details';
  static ModalRoute<void> route({
    required CustomCoinDto coin,
    required Avatar avatar,
  }) {
    return MaterialPageRoute<void>(
      settings: const RouteSettings(name: routeName),
      builder: (_) => CoinDetails(
        coin: coin,
        avatar: avatar,
      ),
    );
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
      body: Padding(
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
                  _firstSection(),
                  const SizedBox(height: 16),
                  _secondSection(l10n),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Contains coin image, coin name,symbol, price
  Widget _firstSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 150,
          height: 150,
          child: avatar.toImage(),
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
  Widget _secondSection(AppLocalizations l10n) {
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
