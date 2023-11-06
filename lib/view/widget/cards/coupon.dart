import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class Coupon extends StatelessWidget {
  const Coupon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(28, 23, 0, 23),
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.greyscale10),
            borderRadius: BorderRadius.circular(8),
          ),
          width: 370,
          height: 167,
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/image/Flutter.svg',
                width: 80,
                height: 80,
              ),
              VerticalDivider(
                thickness: 1.4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      '수료생 특별할인 70% 쿠폰',
                      style: Typo(color: AppColor.greyscale80).body5_12R,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      '플러터 4기 프로젝트 할인',
                      style: Typo(color: AppColor.greyscale80).body2_18B,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      '2023. 10. 10 ~ 12. 24',
                      style: Typo(color: AppColor.greyscale40).body5_12R,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('자세히 보기')),
                ],
              )
            ],
          ),
        ),
        Positioned(
          left: 17,
          top: -8.5,
          child: Container(
            width: 62,
            height: 22,
            decoration: BoxDecoration(
              color: AppColor.meaningfulRed,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Text(
                '오늘 만료',
                style: Typo(color: Colors.white).body5_12M,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
