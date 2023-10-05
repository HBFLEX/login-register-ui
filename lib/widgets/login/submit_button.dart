import 'package:flutter/material.dart';

Container SubmitButton(String text) {
  return Container(
    padding: const EdgeInsets.all(15.0),
    margin: const EdgeInsets.only(top: 10, bottom: 14.0),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [Colors.blueAccent, Colors.purple],
      ),
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Center(
        child: Text('$text',
            style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold))),
  );
}
