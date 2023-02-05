import 'package:coin_aggregator/coins_list/domain/models/custom_coin_dto.dart';
import 'package:coin_aggregator/coins_list/view/widgets/coin_details.dart';
import 'package:coin_aggregator/core/app_colors.dart';
import 'package:coin_aggregator/core/app_text_styles.dart';
import 'package:coin_aggregator/core/global_widgets/test_chart.dart';
import 'package:coin_aggregator/core/num_utils.dart';
import 'package:dice_bear/dice_bear.dart';
import 'package:flutter/material.dart';

class CoinsTile extends StatelessWidget {
  const CoinsTile({
    super.key,
    required this.coin,
    required this.index,
  });
  final CustomCoinDto coin;
  final int index;

  @override
  Widget build(BuildContext context) {
    final _avatar = DiceBearBuilder.withRandomSeed().build();

    return Card(
      elevation: 5,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          CoinDetails.route(
            avatar: _avatar,
            coin: coin,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: _avatar.toImage(),
              ),
              const SizedBox(width: 8),
              _buildCoinName(),
              const SizedBox(width: 8),
              _buildMiddleSection(),
              _buildLastSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCoinName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          coin.coin?.name ?? '',
          style: AppTextStyles.L_w900,
        ),
        Text(
          coin.coin?.symbol ?? '',
          style: AppTextStyles.L_w900,
        ),
      ],
    );
  }

  Widget _buildMiddleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'USD',
              style: AppTextStyles.L_w900,
            ),
            const SizedBox(width: 8),
            Text(
              coin.ticker?.quotes?.usd?.price?.format() ?? '',
              style: AppTextStyles.L_w900,
            ),
          ],
        ),
        if (index.isOdd)
          Text(
            '- 5.23',
            style: AppTextStyles.M_w900.copyWith(
              color: AppColors.red,
            ),
          ),
        if (index.isEven)
          Text(
            '+ 5.23',
            style: AppTextStyles.M_w900.copyWith(
              color: AppColors.green,
            ),
          ),
      ],
    );
  }

  Widget _buildLastSection() {
    var color = AppColors.green;
    if (index.isOdd) {
      color = AppColors.red;
    }
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            width: 60,
            child: LineChartWidget(points: getUpPricePoints(), color: color),
          ),
          const SizedBox(height: 8),
          if (index.isOdd)
            Text(
              '↓ + 0.13 %',
              style: AppTextStyles.M_w900.copyWith(
                color: AppColors.red,
              ),
            ),
          if (index.isEven)
            Text(
              '↑ + 0.13 %',
              style: AppTextStyles.M_w900.copyWith(
                color: AppColors.green,
              ),
            ),
        ],
      ),
    );
  }
}
