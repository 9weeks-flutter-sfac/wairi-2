// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

// ignore_for_file: camel_case_types
// ignore_for_file: avoid_unnecessary_containers
// ignore_for_file: prefer_const_constructors
class MyPageTalk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/icons/Icon_20/Right.svg'),
                SizedBox(
                  width: 240,
                ),
                Text(
                  '내가 쓴 톡',
                  style: Typo(color: AppColor.greyscale80).body2_18B,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset('assets/icons/Icon_30/Filter.svg'),
                Text('날짜순', style: Typo(color: AppColor.primary80).body5_12M),
              ],
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Bubble(
                      margin: BubbleEdges.only(top: 10),
                      nip: BubbleNip.leftBottom,
                      borderColor: Colors.grey,
                      child: Container(
                        width: 307,
                        height: 64,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.all(8)),
                                Text(
                                  '2022.10.24',
                                  style: Typo(color: AppColor.greyscale40)
                                      .body5_12R,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(4)),
                                Text(
                                  '플러터 3기 출신인데 플러터 짱 재밌음',
                                  style: Typo(color: AppColor.greyscale80)
                                      .body4_14M,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  child: Row(
                                    children: [],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
