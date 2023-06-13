import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import '../themes.dart';

class UserWelcoming extends StatefulWidget {
  const UserWelcoming({super.key});

  @override
  State<UserWelcoming> createState() => UserWelcomingState();
}

class UserWelcomingState extends State<UserWelcoming> {
  final userName = "Радмир";

  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = 'ru_RU';
    initDate();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Здравствуйте, $userName",
          style: headerStyle,
        ),
        Text(
          DateFormat('MMMMEEEEd').format(DateTime.now()), /*"Четверг, 8 Июня",*/
          style: subHeaderStyle,
        )
      ],
    );
  }
}

initDate()async => await initializeDateFormatting();
