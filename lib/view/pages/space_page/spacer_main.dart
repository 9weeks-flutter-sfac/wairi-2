import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/rank.dart';
import 'package:sface/view/widget/cards/rank_list.dart';

class SpacerMain extends StatelessWidget {
  const SpacerMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: OvalBottomBorderClipper(),
          child: Container(height: 281, color: AppColor.primary80),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 20,
                child: Text(
                  '이달의 스페이서',
                  style: Typo(color: Colors.white).body2_18B,
                )),
            SvgPicture.asset('assets/graphic/Graphic4.svg'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.white,
                  width: 100,
                  height: 120,
                  child: Rank(
                      avatar: 'assets/avatar/testavatar.svg', nickname: '우디'),
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                  height: 120,
                  child: Rank(
                      avatar: 'assets/avatar/testavatar.svg', nickname: '우디'),
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                  height: 120,
                  child: Rank(
                      avatar: 'assets/avatar/testavatar.svg', nickname: '우디'),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Column(
              children: [
                RankList(
                  avatar: 'assets/avatar/testavatar.svg',
                  nickname: 'nickname',
                ),
                RankList(
                  avatar: 'assets/avatar/testavatar.svg',
                  nickname: 'nickname',
                ),
                RankList(
                  avatar: 'assets/avatar/testavatar.svg',
                  nickname: 'nickname',
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
