import 'package:flutter/material.dart';

import '../themes.dart';

class UserWelcoming extends StatefulWidget {
  const UserWelcoming({super.key});

  void setState(VoidCallback fn) {
    getDay();
  }

  @override
  State<UserWelcoming> createState() => UserWelcomingState();
}

class UserWelcomingState extends State<UserWelcoming> {
  final userName = "Радмир";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Здравствуйте, $userName",
          style: headerStyle,
        ),
        Text(
          "Четверг, 8 Июня",
          style: subHeaderStyle,
        )
      ],
    );
  }
}

void getDay() {
  var monday = 1;
  var now = new DateTime.now();

  while (now.weekday != monday) {
    now = now.subtract(new Duration(days: 1));
  }

  print('Recent monday $now');
}
