import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/view/widget/cards/card_button_grey.dart';

import '../../../util/typo.dart';
// ignore_for_file: prefer_const_constructors

class CardMogakko extends StatelessWidget {
  const CardMogakko(
      {super.key,
      required this.avatar,
      required this.nickname,
      required this.title,
      required this.content,
      this.onTap,
      required this.date,
      required this.position,
      required this.currentMember,
      required this.maxMember});

  final String avatar;
  final String? nickname;
  final String? title;
  final String? content;
  final String date;
  final String position;
  final String currentMember;
  final String maxMember;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 370,
        height: 255,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 227,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    style: BorderStyle.solid, color: AppColor.greyscale10),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                      leading: SvgPicture.asset(avatar),
                      title: Row(
                        children: [
                          Text(nickname ?? '값 없음',
                              style:
                                  Typo(color: AppColor.greyscale80).body5_12B),
                          CardButtonGrey(
                            text: position,
                          ),
                        ],
                      ),
                      trailing: SvgPicture.asset(
                          'assets/icons/Icon_20/Property 1=Like.svg')),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        Text(
                          '[모집중]',
                          style: Typo(color: AppColor.primary80).body3_16B,
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            title ?? '값 없음',
                            overflow: TextOverflow.ellipsis,
                            style: Typo(color: AppColor.greyscale80).body3_16B,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(18, 12, 18, 0),
                    child: Text(
                      content ?? '값 없음',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(18, 12, 0, 0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/Icon_70/man-who.svg',
                              width: 25,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: currentMember,
                                      style: Typo(color: AppColor.primary80)
                                          .body5_12B),
                                  TextSpan(
                                      text: '/${maxMember}',
                                      style: Typo(color: AppColor.greyscale80)
                                          .body5_12B),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(18, 12, 18, 0),
                        child: Text(
                          date ?? '값 없음',
                          style: Typo(color: AppColor.greyscale40).body5_12R,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                    child: Row(
                      children: [
                        CardButtonGrey(
                          text: '# 플러터',
                        ),
                        CardButtonGrey(
                          text: '업데이트',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: -24,
                          child: SvgPicture.asset(
                            'assets/icons/Icon_Avatar.svg',
                            width: 20,
                          ),
                        ),
                        Positioned(
                          left: -12,
                          child: SvgPicture.asset(
                            'assets/icons/Icon_Avatar.svg',
                            width: 20,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/Icon_Avatar.svg',
                          width: 20,
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/icons/Icon_20/plus.svg',
                      width: 16,
                    ),
                    Text(
                      '3',
                      style: Typo(color: AppColor.primary80).body5_12R,
                    ),
                  ],
                ),
                SizedBox(
                  width: 35,
                ),
                Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: -24,
                          child: SvgPicture.asset(
                            'assets/icons/Icon_Avatar.svg',
                            width: 20,
                          ),
                        ),
                        Positioned(
                          left: -12,
                          child: SvgPicture.asset(
                            'assets/icons/Icon_Avatar.svg',
                            width: 20,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/Icon_Avatar.svg',
                          width: 20,
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/icons/Icon_20/Property 1=Like.svg',
                      width: 16,
                    ),
                    Text(
                      '3',
                      style: Typo(color: AppColor.primary80).body5_12R,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
