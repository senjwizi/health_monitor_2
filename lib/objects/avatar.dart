import 'package:flutter/material.dart';
import 'package:health_monitor_2/themes.dart';

class Avatar extends StatelessWidget {
  final String userAvatarUrl;
  final bool internetAvalible;
  final Function()? onTap;
  const Avatar({super.key, required this.userAvatarUrl, required this.internetAvalible, required this.onTap});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: internetAvalible ? CircleAvatar(
        radius: 24,
        backgroundColor: colorGrey,
        backgroundImage: NetworkImage(userAvatarUrl),
      ) :
      const CircleAvatar(
        radius: 24,
        backgroundColor: colorGrey,
      )
    );
  }
}
