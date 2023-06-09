import 'package:flutter/material.dart';
import 'package:health_monitor_2/data/dataList.dart';
import 'package:health_monitor_2/objects/chartTile.dart';

class ChartBody extends StatelessWidget {
  const ChartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23.0),
          child: ListView.builder(
              itemCount: dataList.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) =>
                  ChartTile(data: dataList[index]))),
    );
  }
}
