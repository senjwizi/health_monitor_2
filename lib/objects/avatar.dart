import 'package:flutter/material.dart';
import 'package:health_monitor_2/themes.dart';

class Avatar extends StatelessWidget {
  final userAvatarUrl;
  final Function()? onTap;
  const Avatar({super.key, required this.userAvatarUrl, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 24,
        backgroundColor: colorGrey,
        //backgroundImage: AssetImage(userAvatarUrl),
      ),
    );
  }
}
