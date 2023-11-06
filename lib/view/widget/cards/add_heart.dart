import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class AddHeart extends StatelessWidget {
  const AddHeart({super.key, required this.add, required this.like});

  final String add;
  final String like;

  @override
  Widget build(BuildContext context) {
    return Row(
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
              add,
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
              like,
              style: Typo(color: AppColor.primary80).body5_12R,
            ),
          ],
        ),
      ],
    );
  }
}
