import 'package:coin_aggregator/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurrentDateTimeWidget extends StatelessWidget {
  const CurrentDateTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final formattedDate = DateFormat('MM/dd/yyyy hh:mm aa').format(now);

    return Text(
      formattedDate,
      style: AppTextStyles.L_w900,
    );
  }
}
