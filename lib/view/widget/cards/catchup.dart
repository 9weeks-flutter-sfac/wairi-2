import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/view/widget/cards/card_button_grey.dart';

import '../../../util/typo.dart';
// ignore_for_file: prefer_const_constructors

class Catchup extends StatelessWidget {
  const Catchup(
      {super.key,
      required this.avatar,
      required this.nickname,
      required this.content,
      required this.date});

  final String avatar;
  final String? nickname;
  final String? content;
  final String? date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 208,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  style: BorderStyle.solid, color: AppColor.greyscale10),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Container(
                  width: 237,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          avatar,
                          width: 40,
                        ),
                        title: Row(
                          children: [
                            Text(nickname ?? '값 없음',
                                style: Typo(color: AppColor.greyscale80)
                                    .body5_12B),
                            CardButtonGrey(
                              text: '수료생',
                            ),
                          ],
                        ),
                        trailing: SvgPicture.asset(
                            'assets/icons/Icon_20/Property 1=Like.svg'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Container(
                          height: 45,
                          child: Text(
                            content ?? '값 없음',
                            style: Typo(color: AppColor.greyscale80).body3_16B,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(18, 12, 0, 0),
                        child: Text(
                          date!,
                          style: Typo(color: AppColor.greyscale40).body5_12R,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 12),
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
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    child: Image.asset(
                      'assets/image/rocketImage.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
    );
  }
}
