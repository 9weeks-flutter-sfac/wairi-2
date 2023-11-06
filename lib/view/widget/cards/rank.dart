import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/card_button_grey.dart';

class Rank extends StatelessWidget {
  const Rank({super.key, required this.avatar, required this.nickname});

  final String avatar;
  final String nickname;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 143,
          height: 165,
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.greyscale10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                avatar,
                width: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    nickname,
                    style: Typo(color: AppColor.greyscale80).body4_14B,
                  ),
                  CardButtonGrey(text: '수료생'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/Icon_20/Property 1=Like.svg',
                      width: 16,
                    ),
                    Text('340',
                        style: Typo(color: AppColor.primary80).body5_12R),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: -28,
          right: 10,
          child: SvgPicture.asset('assets/icons/1st.svg'),
        )
      ],
    );
  }
}
