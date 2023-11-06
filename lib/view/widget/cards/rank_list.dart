import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/card_button_grey.dart';

class RankList extends StatelessWidget {
  const RankList({super.key, required this.avatar, required this.nickname});

  final String avatar;
  final String nickname;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 8, 0, 8),
          width: 370,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColor.greyscale10),
          ),
          child: Row(
            children: [
              Container(
                constraints: BoxConstraints(minHeight: 48, minWidth: 43),
                child: SvgPicture.asset(avatar),
              ),
              Container(
                width: 160,
                child: Row(
                  children: [
                    Text(
                      nickname,
                      style: Typo(color: AppColor.greyscale80).body5_12B,
                    ),
                    CardButtonGrey(text: '수료생'),
                  ],
                ),
              ),
              Icon(
                Icons.add,
                size: 16,
              ),
              Text(
                '9',
                style: Typo(color: AppColor.primary80).body5_12R,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.favorite,
                  size: 16,
                ),
              ),
              Text(
                '400',
                style: Typo(color: AppColor.primary80).body5_12R,
              ),
            ],
          ),
        ),
        Positioned(
          top: -20,
          right: 10,
          child: Container(
            width: 28,
            height: 40,
            decoration: BoxDecoration(color: AppColor.primary30),
            child: Center(
              child: Text(
                '4th',
                style: Typo(color: AppColor.primary80).body5_12B,
              ),
            ),
          ),
        )
      ],
    );
  }
}
