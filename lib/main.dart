import 'package:flutter/material.dart';
import 'package:custom_app_test/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          [Color.fromARGB(255, 1, 20, 10), Color.fromARGB(255, 1, 500, 10)]),
    ),
  ));
}
