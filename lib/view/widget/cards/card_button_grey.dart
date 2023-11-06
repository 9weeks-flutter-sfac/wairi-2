import 'package:flutter/material.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class CardButtonGrey extends StatelessWidget {
  const CardButtonGrey({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      decoration: BoxDecoration(
          color: AppColor.greyscale5, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            text,
            style: Typo(color: AppColor.greyscale60).body5_12R,
          ),
        ),
      ),
    );
  }
}
