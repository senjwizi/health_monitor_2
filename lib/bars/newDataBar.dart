import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_monitor_2/pages/userProfile.dart';
import 'package:health_monitor_2/themes.dart';

AppBar NewDataBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    toolbarHeight: MediaQuery.of(context).size.height * 0.08,
    centerTitle: true,
    actions: [
      GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            //onTap: () => Get.to(const UserProfile()), 
            child: const Icon(Icons.add, color: colorBlack, size: 32,),
          ),
        ),
      )
    ],
    title: Text(
      "Новые показания",
      style: headerStyle,
      textAlign: TextAlign.start,
    ),
  );
}
