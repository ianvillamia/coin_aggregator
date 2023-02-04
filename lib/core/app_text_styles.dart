// ignore_for_file: constant_identifier_names

import 'package:coin_aggregator/core/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();
//parang t shirt lang hahaha this should be something like
// heading700_120_1 things but like to keep it simple :)

  static const TextStyle xL = TextStyle(
    fontSize: 22,
  );
  static const TextStyle L = TextStyle(
    fontSize: 14,
  );
  static const TextStyle M = TextStyle(
    fontSize: 12,
  );
  static const TextStyle S = TextStyle();

  static const TextStyle xL_w900 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );
  static const TextStyle L_w900 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle M_w900 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle S_w900 = TextStyle(
    fontWeight: FontWeight.bold,
  );
}
