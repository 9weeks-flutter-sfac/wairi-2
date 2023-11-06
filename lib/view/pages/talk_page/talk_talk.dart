import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sface/controller/talk_controller.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/card_talk.dart';

class TalkTalk extends GetView<TalkController> {
  const TalkTalk({super.key, required this.onTap, required this.onDetailTap});

  final void Function() onTap;
  final void Function(String) onDetailTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "내용 검색하기",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
                icon: Icon(Icons.search),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: onTap,
                icon: Transform.rotate(
                  angle: 3.14,
                  child: SvgPicture.asset(
                    'assets/icons/Icon_20/Right.svg',
                  ),
                ),
              ),
              Text(
                '톡톡톡',
                style: Typo(color: AppColor.greyscale80).body2_18B,
              ),
              SizedBox(
                width: 50,
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Obx(
                () => Column(
                    children: controller.talkListRx.value == null
                        ? const [
                            Center(
                              child: CircularProgressIndicator(),
                            )
                          ]
                        : controller.talkListRx.value!
                            .map((e) => InkWell(
                                  onTap: () {
                                    controller.talkId.value = e.id!;
                                    onDetailTap(e.id!);
                                  },
                                  child: CardTalk(
                                      nickname: e.author!.nickname!,
                                      avatar: 'assets/avatar/testavatar.svg',
                                      content: e.content!),
                                ))
                            .toList()),
              ),
            ),
          )
        ],
      ),
    );
  }
}
