import 'package:flutter/material.dart';
import 'package:health_monitor_2/data/chartStyles.dart';
import 'package:health_monitor_2/themes.dart';

import '../data/parameterTileData.dart';

class ParameterTile extends StatelessWidget {
  final ParameterData data;

  const ParameterTile({super.key, required this.data});

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
                  color: colorTileShadow, blurRadius: 10, offset: Offset(6, 6))
            ]),
        height: data.chartStyles != ChartStyles.none ? 250 : 150,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.tile,
                style: inverseColor(tileTitleStyle),
              ),
              data.chartStyles != ChartStyles.none
                  ? Container(
                      height: 90,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(15)))
                  : const SizedBox(),
              Text(data.value.toString(), style: inverseColor(tileValueStyle)),
              Text(data.unit, style: inverseColor(tileSubTitleStyle))
            ],
          ),
        ),
      ),
    );
  }

  TextStyle inverseColor(TextStyle style) {
    return data.favorite ? style.copyWith(color: colorWhite) : style;
  }
}
