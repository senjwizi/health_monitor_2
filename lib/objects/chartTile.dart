import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../data/chartStyles.dart';
import '../data/parameterTileData.dart';
import 'lineChart.dart';
import '../themes.dart';

class ChartTile extends StatelessWidget {
  final ParameterData data;

  const ChartTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: data.favorite
                  ? colorContrast
                  : Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: colorTileShadow,
                    blurRadius: 10,
                    offset: Offset(6, 6))
              ]),
          height: 250,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.tile,
                      style: inverseColor(headerStyle),
                    ),
                    Text(
                      '${data.value} ${data.unit}',
                      style: inverseColor(subHeaderStyle),
                    ),
                  ],
                ),
                Container(
                    height: 150,
                    decoration: BoxDecoration(
                        //color: colorWhite.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(15)),
                    child: LineChart(LineChartData(
                        minX: 0,
                        maxX: 6,
                        minY: 0,
                        maxY: 5,
                        borderData: FlBorderData(show: false),
                        titlesData: FlTitlesData(
                          show: true,
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: bottomTitles,
                          ),
                        ),
                        gridData: FlGridData(
                          show: true,
                          verticalInterval: 1,
                          horizontalInterval: 1.5,
                          drawHorizontalLine: true,
                          getDrawingHorizontalLine: (value) {
                            return FlLine(
                                color: Colors.grey[300], strokeWidth: 1);
                          },
                          drawVerticalLine: true,
                          getDrawingVerticalLine: (value) {
                            return FlLine(
                                color: Colors.grey[300], strokeWidth: 1);
                          },
                        ),
                        lineTouchData: LineTouchData(enabled: false),
                        lineBarsData: [
                          LineChartBarData(
                              isCurved: true,
                              color: data.favorite ? colorWhite : colorContrast,
                              barWidth: 8,
                              isStrokeCapRound: true,
                              dotData: FlDotData(show: false),
                              belowBarData: BarAreaData(show: false),
                              spots: [
                                const FlSpot(0, 3.5),
                                const FlSpot(1, 2.5),
                                const FlSpot(2, 0.3),
                                const FlSpot(3, 1.4),
                                const FlSpot(4, 4.1),
                                const FlSpot(5, 3.2),
                                const FlSpot(6, 2),
                              ])
                        ])))
              ],
            ),
          ),
        ));
  }

  TextStyle inverseColor(TextStyle style) {
    return data.favorite ? style.copyWith(color: colorWhite) : style;
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style = inverseColor(subHeaderStyle).copyWith(fontSize: 12);
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text('ПН', style: style);
        break;
      case 1:
        text = Text('ВТ', style: style);
        break;
      case 2:
        text = Text('СР', style: style);
        break;
      case 3:
        text = Text('ЧТ', style: style);
        break;
      case 4:
        text = Text('ПТ', style: style);
        break;
      case 5:
        text = Text('СБ', style: style);
        break;
      case 6:
        text = Text('ВС', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }
}
