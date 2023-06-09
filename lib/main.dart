import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_monitor_2/home.dart';
import 'package:health_monitor_2/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      //darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}
