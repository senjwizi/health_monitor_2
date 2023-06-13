import 'package:flutter/material.dart';
import 'package:health_monitor_2/themes.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../data/parameterTileData.dart';

class AddTile extends StatelessWidget {
  final ParameterData data;

  const AddTile({super.key, required this.data});
  

  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = 'ru_RU';
    initDate();
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
        height: 90,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    data.tile,
                    style: inverseColor(tileTitleStyle.copyWith(color: colorBlack)),
                  ),
                  Text(
                    data.isNew ? "Показаний еще не было" : "Последние показание:\n${DateFormat('MMMMEEEEd').format(data.recentReadings)}", 
                  style: inverseColor(tileSubTitleStyle.copyWith(fontSize: 10)))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data.isNew ? '' : data.value.toString(), style: inverseColor(tileValueStyle)),
                  Text(data.isNew ? '' : data.unit, style: inverseColor(tileSubTitleStyle))
                ],
              ),


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

initDate()async => await initializeDateFormatting();
