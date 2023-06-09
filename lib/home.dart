import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:health_monitor_2/objects/homeBar.dart';
import 'package:health_monitor_2/pages/chartBody.dart';
import 'package:health_monitor_2/pages/chartBody1.dart';
import 'package:health_monitor_2/pages/homeBody.dart';
import 'package:health_monitor_2/themes.dart';
import 'objects/chartBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final userAvatarUrl =
      "https://tse2.mm.bing.net/th?id=OIP.1VLtLBauO7F4wJqhvkKn8wHaE7&pid=Api";

  int _currentPageIndex = 0;

  List<Widget> listOfPages = [HomeBody(), const SizedBox(), ChartBody()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background, //colorWhite,
      appBar: _currentPageIndex == 0 ? HomeBar() : ChartBar(),
      bottomNavigationBar: GNav(
        tabBorderRadius: 15,
        haptic: false,
        curve: Curves.easeInOut,
        color: colorGrey,
        activeColor: colorBlack,
        iconSize: 34,
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
        tabs: const [
          GButton(icon: Icons.window), //assessment
          GButton(icon: Icons.add_circle_outline), //assessment
          GButton(icon: Icons.assessment), //assessment
        ],
        selectedIndex: _currentPageIndex,
        onTabChange: (value) => setState(() {
          if (value == 1) {
            Get.to(HomePage());
          }
          _currentPageIndex = value;
          print(_currentPageIndex);
        }),
      ),
      body: listOfPages[_currentPageIndex],
    );
  }
}
