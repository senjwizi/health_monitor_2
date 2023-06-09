import 'package:health_monitor_2/data/chartStyles.dart';

class ParameterData {
  final String tile;
  final int value;
  final String unit;
  final ChartStyles? chartStyles;
  final bool favorite;

  ParameterData(
      {required this.tile,
      required this.value,
      required this.unit,
      required this.chartStyles,
      required this.favorite});
}
