import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:health_monitor_2/bars/chartBar.dart';
import 'package:health_monitor_2/bars/homeBar.dart';
import 'package:health_monitor_2/bars/newDataBar.dart';
import 'package:health_monitor_2/pages/chartBody.dart';
import 'package:health_monitor_2/pages/homeBody.dart';
import 'package:health_monitor_2/pages/newDataBody.dart';
import 'package:health_monitor_2/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final userAvatarUrl =
      "https://tse2.mm.bing.net/th?id=OIP.1VLtLBauO7F4wJqhvkKn8wHaE7&pid=Api";

  int _currentPageIndex = 0;


  @override
  Widget build(BuildContext context) {
    List<Widget> listOfPages = [HomeBody(), NewDataBody(), ChartBody()];
    List<AppBar> listOfBars = [HomeBar(context), NewDataBar(context), ChartBar(context)];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background, //colorWhite,
      appBar: listOfBars[_currentPageIndex],
      bottomNavigationBar: GNav(
        tabBorderRadius: 5,
        haptic: false,
        curve: Curves.easeInOut,
        color: colorGrey,
        activeColor: colorBlack,
        iconSize: 34,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        tabs: const [
          GButton(icon: Icons.window), //assessment
          GButton(icon: Icons.add_circle_outline), //assessment
          GButton(icon: Icons.assessment), //assessment
        ],
        selectedIndex: _currentPageIndex,
        onTabChange: (value) => setState(() {
          _currentPageIndex = value;
          print(_currentPageIndex);
        }),
      ),
      body: listOfPages[_currentPageIndex],
    );
  }
}
