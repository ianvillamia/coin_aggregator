import 'package:coin_aggregator/coins_list/data/models/coin_dto.dart';
import 'package:flutter/material.dart';

class CoinsTile extends StatelessWidget {
  const CoinsTile({super.key, required this.coin});
  final CoinDto coin;

  @override
  Widget build(BuildContext context) {
    // TODO create actual widget
    return Card(
      child: Row(
        children: [
          CircleAvatar(),
        ],
      ),
    );
  }
}
