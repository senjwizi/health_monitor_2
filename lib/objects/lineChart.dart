import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:health_monitor_2/themes.dart';

class DataLineChart extends StatelessWidget {
  const DataLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      tableData,
      swapAnimationDuration: const Duration(microseconds: 250),
    );
  }

  LineChartData get tableData => LineChartData(
        lineTouchData: lineTouchData,
        gridData: gridData,
        titlesData: titleData,
        borderData: borderData,
        lineBarsData: lineBarsData,
        minX: 1,
        maxX: 13,
        minY: 0,
        maxY: 4,
      );

  LineTouchData get lineTouchData => LineTouchData(enabled: false);

  FlGridData get gridData => FlGridData(show: false);

  FlTitlesData get titleData => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: colorWhite, width: 1),
          left: BorderSide(color: colorWhite, width: 1),
          right: BorderSide(color: colorWhite, width: 1),
          top: BorderSide(color: colorWhite, width: 1),
        ),
      );

  List<LineChartBarData> get lineBarsData => [lineChartBarData];

  LineChartBarData get lineChartBarData => LineChartBarData(
        isCurved: true,
        color: colorContrast,
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 1.5),
          FlSpot(5, 1.4),
          FlSpot(7, 3.4),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
      );
}
