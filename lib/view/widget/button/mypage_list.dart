// ignore_for_file: prefer_const_constructors
import 'dart:js_util';

import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class myPagebutton extends StatelessWidget {
  const myPagebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(),
                    child: Text(
                      '내가 쓴 캐치업',
                      style: Typo(color: AppColor.greyscale80).body3_16M,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('3개'),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: AppColor.primary5,
                    textStyle: Typo(color: AppColor.primary80).body5_12R,
                    side: BorderSide(
                      color: AppColor.primary80,
                      width: 1,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Container(
              decoration: DottedDecoration(
                  shape: Shape.line, linePosition: LinePosition.bottom),
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(),
                    child: Text(
                      '내가 쓴 캐치업',
                      style: Typo(color: AppColor.greyscale80).body3_16M,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '0개',
                    style: Typo(color: AppColor.greyscale60).body5_12R,
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: AppColor.greyscale5,
                    textStyle: Typo(color: AppColor.greyscale60).body5_12R,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(8)),
            Container(
              decoration: DottedDecoration(
                  shape: Shape.line, linePosition: LinePosition.bottom),
            ),
          ],
        ),
      ),
    );
  }
}
