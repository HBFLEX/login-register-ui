import 'package:flutter/material.dart';

Container bottomText(String text, String position) {
  return Container(
    child: Padding(
      padding: position == 'left'
          ? const EdgeInsets.only(left: 20.0)
          : const EdgeInsets.only(right: 20.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.lightBlue,
          fontSize: 15,
          letterSpacing: 1.2,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
  );
}
