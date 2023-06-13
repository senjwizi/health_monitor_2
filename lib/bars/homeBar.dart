import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_monitor_2/objects/avatar.dart';
import 'package:health_monitor_2/objects/userWelcoming.dart';
import 'package:health_monitor_2/pages/userProfile.dart';

AppBar HomeBar(BuildContext context) {
  var userAvatarUrl = "";
  bool internetAvalible = false; 

  return AppBar(
    elevation: 0,
    toolbarHeight: MediaQuery.of(context).size.height * 0.1,
    flexibleSpace:Container(
        margin: const EdgeInsets.only(left: 30, right: 30, top: 50),
        alignment: Alignment.bottomCenter,
        //height: 120,
        //color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const UserWelcoming(), // добавить изменение даты и имени
            Avatar(
              userAvatarUrl: userAvatarUrl,
              internetAvalible: internetAvalible,
              onTap: () {
                Get.to(() => const UserProfile());
              },
            )
          ],
        ),
      ),
  );
}
