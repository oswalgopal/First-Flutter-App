import 'package:flutter/material.dart';

class InputWidgetDecoration {
  static InputDecoration inputWidgetDecoration(
  BuildContext context, {
        String labelText = "",
        String hintText = "",
        Icon prefixIcon,
        Widget suffixIcon,
  }) {
    return InputDecoration(
      hintText: hintText,
      labelText: labelText,
      labelStyle: TextStyle(
        color: Colors.blue,
      ),
      hintStyle: TextStyle(
          color: Colors.blue,
          fontSize: 20
      ),
      fillColor: Colors.blue,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon
    );
  }
}