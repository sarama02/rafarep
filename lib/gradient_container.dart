import 'package:flutter/material.dart';
import 'package:custom_app_test/styled_text.dart';

var startAlignment = Alignment.topLeft;
// Alignment? startAlignment;
var endAlignment = Alignment.bottomRight;
// final endAlignment = Alignment.bottomRight;
// const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // GradientContainer({key}): super(key: key);
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: startAlignment,
            end: endAlignment,
            colors: const [
              Colors.black,
              Colors.black12,
            ],
          ),
        ),
        child: const Center(
            child: StyledText()),
      );
  }
}