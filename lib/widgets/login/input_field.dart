import 'package:flutter/material.dart';

Container inputField(String placeholderText, bool isPassword) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    child: TextField(
      obscureText: isPassword ? true : false,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue.shade200, width: 3.0),
        ),
        hintText: placeholderText,
        hintStyle: TextStyle(color: Colors.grey.shade500),
      ),
    ),
  );
}
