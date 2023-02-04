import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PricePoint {
  PricePoint({required this.x, required this.y});

  final double x;
  final double y;
}

List<PricePoint> getUpPricePoints() {
  final data = <double>[2, 3, 4, 7, 8];
  return data
      .mapIndexed(
        (index, element) => PricePoint(x: index.toDouble(), y: element),
      )
      .toList();
}

List<PricePoint> getDownPricePoint() {
  final data = <double>[8, 7, 4, 3, 2];
  return data
      .mapIndexed(
        (index, element) => PricePoint(x: index.toDouble(), y: element),
      )
      .toList();
}

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({
    super.key,
    required this.points,
    required this.color,
  });
  final List<PricePoint> points;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(
        LineChartData(
          borderData: FlBorderData(show: false),
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: points.map((e) => FlSpot(e.x, e.y)).toList(),
              isCurved: false,
              color: color,
              dotData: FlDotData(show: false),
            )
          ],
        ),
      ),
    );
  }
}
