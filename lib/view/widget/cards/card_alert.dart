import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class CardAlert extends StatelessWidget {
  const CardAlert({super.key, required this.avatar});

  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 82,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
          leading: SvgPicture.asset(avatar),
          title: Text(
            '마르코님이 나의 톡에 댓글을 달았습니다',
            style: Typo(color: AppColor.greyscale80).body4_14M,
          ),
          subtitle: Text(
            "2023.10.10",
            style: Typo(color: AppColor.greyscale40).body5_12R,
          ),
          trailing: SvgPicture.asset('assets/icons/Icon_20/Delete.svg')),
    );
  }
}
