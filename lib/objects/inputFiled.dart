import 'package:flutter/material.dart';
import 'package:health_monitor_2/themes.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller; 
  final String hintText;
  final Icon icon;
  final bool canEdit;
  const InputField({super.key, required this.controller, required this.hintText, required this.canEdit, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: TextField(
        enabled: canEdit,
        controller: controller,
        style: subHeaderStyle,
        decoration: InputDecoration(
          filled: true,
          fillColor: colorBright.withOpacity(0.5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none
          ),
          hintText: hintText,
          prefixIcon: icon,
          prefixIconColor: colorBlack,
        )
      ),
    );
  }
}