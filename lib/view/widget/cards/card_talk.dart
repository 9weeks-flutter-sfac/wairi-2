import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sface/controller/talk_controller.dart';
import 'package:sface/util/color.dart';
import 'package:sface/view/widget/cards/add_heart.dart';
import 'package:sface/view/widget/cards/avatar_with.dart';

import '../../../util/typo.dart';
// ignore_for_file: prefer_const_constructors

class CardTalk extends StatelessWidget {
  const CardTalk({
    required this.nickname,
    super.key,
    required this.avatar,
    required this.content,
    this.isClick,
  });

  final String nickname;
  final String? avatar;
  final String content;
  final bool? isClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWith(
            nickname: nickname,
          ),
          Container(
            width: 292,
            child: Column(
              children: [
                Container(
                  height: 64,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: isClick == true
                          ? Border.all(color: AppColor.primary70)
                          : Border.all(color: AppColor.greyscale10),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 8, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: Text(
                                '24분 전',
                                style:
                                    Typo(color: AppColor.greyscale40).body5_12R,
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              child: Text(
                                content,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    Typo(color: AppColor.greyscale80).body4_14M,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: SvgPicture.asset(
                            'assets/icons/Icon_20/Property 1=Like.svg'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                AddHeart(add: '3', like: '3')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
