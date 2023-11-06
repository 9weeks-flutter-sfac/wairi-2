import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class AvatarWith extends StatelessWidget {
  const AvatarWith({super.key, required this.nickname});

  final String nickname;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              backgroundColor: AppColor.primary5,
              radius: 30,
              child: SvgPicture.asset(
                'assets/avatar/testavatar.svg',
                width: 42,
              ),
            ),
            Positioned(
              bottom: -8,
              left: -4,
              child: Container(
                width: 69,
                height: 18,
                decoration: BoxDecoration(
                  color: AppColor.primary80,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    '개발자 / 1기',
                    style: Typo(color: Colors.white).body5_12R,
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
          ),
          child: Text(
            nickname,
            style: Typo(color: AppColor.greyscale80).body5_12B,
          ),
        ),
      ],
    );
  }
}
