import 'package:flutter/material.dart';
import 'package:health_monitor_2/themes.dart';

AppBar ChartBar() {
  return AppBar(
    elevation: 0,
    toolbarHeight: 100,
    centerTitle: true,
    title: Text(
      "Графики",
      style: headerStyle,
      textAlign: TextAlign.start,
    ),
  );
}
