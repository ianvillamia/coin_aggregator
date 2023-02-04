import 'package:coin_aggregator/coins_list/cubit/coins_list_cubit.dart';
import 'package:coin_aggregator/coins_list/view/widgets/coin_tile.dart';
import 'package:coin_aggregator/core/app_text_styles.dart';
import 'package:coin_aggregator/core/global_widgets/current_date_time_widget.dart';
import 'package:coin_aggregator/core/global_widgets/user_profile_image.dart';
import 'package:coin_aggregator/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinListPage extends StatelessWidget {
  const CoinListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.coin_app_bar,
          style: AppTextStyles.xL_w900,
        ),
        actions: const [
          UserProfileImage(),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.coin_top_coins,
                  style: AppTextStyles.L_w900,
                ),
                const CurrentDateTimeWidget(),
              ],
            ),
            Expanded(
              child: BlocBuilder<CoinsCubit, CoinsState>(
                builder: (context, state) {
                  return state.maybeMap(
                    loading: (_) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    finished: (finishedState) {
                      final coins = finishedState.coins;

                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: coins.length,
                        itemBuilder: (BuildContext context, int index) {
                          final coin = coins[index];
                          return CoinsTile(
                            coin: coin,
                            index: index,
                          );
                        },
                      );
                    },
                    error: (errorState) {
                      return Center(
                        child: Text(errorState.error ?? l10n.something),
                      );
                    },
                    orElse: () {
                      return const SizedBox();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
