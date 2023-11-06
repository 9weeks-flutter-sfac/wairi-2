import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class TestBorder extends StatelessWidget {
  const TestBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: DottedDecoration(
            color: Colors.black,
            strokeWidth: 0.5,
            linePosition: LinePosition.bottom,
          ),
        ),
      ),
    );
  }
}
