import 'package:flutter/material.dart';
import 'package:health_monitor_2/themes.dart';

AppBar ChartBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    toolbarHeight: MediaQuery.of(context).size.height * 0.08,
    centerTitle: true,
    title: Text(
      "Графики",
      style: headerStyle,
      textAlign: TextAlign.start,
    ),
  );
}
