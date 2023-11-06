import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sface/controller/mogak_controller.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/card_mogakko.dart';

class MogakkoHot extends GetView<MogakController> {
  const MogakkoHot({
    super.key,
    this.onPressed,
    required this.onTapDetail,
  });
  final void Function()? onPressed;
  final void Function(String) onTapDetail;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: onPressed,
                icon: Transform.rotate(
                  angle: 3.14,
                  child: SvgPicture.asset(
                    'assets/icons/Icon_20/Right.svg',
                  ),
                ),
              ),
              Text(
                '핫한 모각코',
                style: Typo(color: AppColor.greyscale80).body2_18B,
              ),
              SizedBox(
                width: 30,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: SvgPicture.asset(
                    'assets/icons/Icon_30/Filter.svg',
                    width: 16,
                  ),
                ),
                Text(
                  '날짜순',
                  style: Typo(color: AppColor.primary80).body5_12M,
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  children: controller.topMogakListRx.value == null
                      ? const [
                          Center(
                            child: CircularProgressIndicator(),
                          )
                        ]
                      : controller.topMogakListRx.value!
                          .map(
                            (e) => CardMogakko(
                              onTap: () {
                                onTapDetail(e.id as String);
                              },
                              avatar: 'assets/avatar/testavatar.svg',
                              nickname: e.author.nickname,
                              title: e.title,
                              content: e.content,
                              date: e.updatedAt.split('T')[0],
                              position: e.author.position,
                              currentMember:
                                  e.appliedProfiles.length.toString(),
                              maxMember: e.maxMember.toString(),
                            ),
                          )
                          .toList()),
            ),
          ),
        ],
      ),
    );
  }
}