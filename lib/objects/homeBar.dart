import 'package:flutter/material.dart';
import 'package:health_monitor_2/objects/userWelcoming.dart';

import 'avatar.dart';

AppBar HomeBar() {
  var userAvatarUrl = "";
  return AppBar(
    elevation: 0,
    toolbarHeight: 100,
    flexibleSpace: Container(
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 23),
      alignment: Alignment.bottomCenter,
      //height: 120,
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UserWelcoming(), // добавить изменение даты и имени
          Avatar(
            userAvatarUrl: userAvatarUrl,
            onTap: () {
              print("Open user profile");
            },
          )
        ],
      ),
    ),
  );
}
