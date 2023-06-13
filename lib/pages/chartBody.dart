import 'package:flutter/material.dart';
import 'package:health_monitor_2/data/dataList.dart';
import 'package:health_monitor_2/data/parameterTileData.dart';
import 'package:health_monitor_2/objects/chartTile.dart';
import 'package:health_monitor_2/themes.dart';

class ChartBody extends StatefulWidget {
  const ChartBody({super.key});

  @override
  State<ChartBody> createState() => _ChartBodyState();
}

class _ChartBodyState extends State<ChartBody> {
  List<ParameterData> displayList = List.of(dataList);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23.0),
          child: Column(
            children: [
              Container(
                color: Theme.of(context).colorScheme.background,
                padding: const EdgeInsets.all(8),
                child: TextField(
                  onChanged:(value) => updateList(value),
                  style: subHeaderStyle,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: colorBright.withOpacity(0.5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none
                    ),
                    hintText: "Поиск",
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: colorBlack,
                  ),
                ),
              ),
              Expanded(
                child: displayList.isEmpty ?
                Center(
                  child: Text("Ничего не найдено", style: tileTitleStyle),
                )
                : 
                ListView.builder(
                  itemCount: displayList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) =>
                    ChartTile(data: displayList[index])),
              )
            ],
          )
          ),
    );
  }

  void updateList(String value)
  {
    setState(() {
      displayList = dataList.where((element) => element.tile.toLowerCase().contains(value.toLowerCase())).toList();
    }); 
  }
}
