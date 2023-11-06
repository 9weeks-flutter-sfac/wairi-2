import 'package:flutter/material.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class Alerts extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onButtonPressed;

  const Alerts({
    Key? key,
    required this.title,
    required this.content,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: Container(
        width: 242.0,
        padding: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 16.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x40000000),
              offset: Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Typo(color: AppColor.greyscale80).body3_16B,
            ),
            SizedBox(height: 24.0),
            Text(
              content,
              style: Typo(color: AppColor.greyscale40).body5_12R,
            ),
            SizedBox(height: 24.0),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: onButtonPressed,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(104.0, 0),
                  ),
                  child: Text('닫기'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
