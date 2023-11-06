import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/card_button_grey.dart';
// ignore_for_file: prefer_const_constructors

class ReComment extends StatelessWidget {
  const ReComment({super.key, required this.avatar});

  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      width: 370,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                avatar,
                width: 60,
              ),
              Text(
                '우디',
                style: Typo(color: AppColor.greyscale80).body4_14B,
              ),
              CardButtonGrey(text: '수료생'),
              Text('님의 톡에 댓글을 남겼습니다.'),
              SvgPicture.asset('assets/icons/Icon_20/Right.svg')
            ],
          ),
          Container(
            constraints: BoxConstraints(minHeight: 82),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppColor.greyscale5),
            child: Center(
              child: Text(
                '와 새로운 기능이 정리가 잘 되어있네요! 좋은 정보 공유 감사드립니다! 글을 너무 잘 쓰시는 것 같아요!',
                style: Typo(color: AppColor.greyscale80).body4_14M,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '2023.04.05',
                style: Typo(color: AppColor.greyscale40).body5_12R,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SvgPicture.asset(
                    'assets/icons/Icon_20/Property 1=Like.svg'),
              ),
              Text('3'),
            ],
          ),
        ],
      ),
    );
  }
}
