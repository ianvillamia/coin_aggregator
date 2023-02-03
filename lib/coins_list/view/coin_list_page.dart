import 'package:coin_aggregator/coins_list/cubit/coins_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinListPage extends StatelessWidget {
  const CoinListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CoinsCubit, CoinsState>(
        builder: (context, state) {
          return state.maybeMap(
            loading: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            finished: (finishedState) {
              final coins = finishedState.coins;
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: ListView(
                  children: coins
                      .map(
                        (e) => Text(e.coin?.name ?? ''),
                      )
                      .toList(),
                ),
              );
            },
            error: (errorState) {
              return Center(
                child: Text(errorState.error ?? 'Something'),
              );
            },
            orElse: () {
              return const SizedBox();
            },
          );
        },
      ),
    );
  }
}
