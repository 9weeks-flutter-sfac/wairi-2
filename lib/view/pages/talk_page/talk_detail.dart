import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sface/controller/talk_controller.dart';
import 'package:sface/model/talk_single_model.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/card_talk.dart';

class TalkDetail extends GetView<TalkController> {
  const TalkDetail({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 80,
        color: Colors.grey,
        child: Center(
          child: TextField(
            controller: controller.talkDetailController,
            decoration: InputDecoration(
              suffixIcon: InkWell(
                  onTap: () {
                    controller.createTalk("talk",
                        id: controller.talkId.value,
                        content: controller.talkDetailController.text);
                  },
                  child: SvgPicture.asset('assets/icons/Icon_20/Send.svg')),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
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
                  '핫한 톡',
                  style: Typo(color: AppColor.greyscale80).body2_18B,
                ),
                SizedBox(
                  width: 50,
                ),
              ],
            ),
            controller.talkSingleRx.value != null
                ? Obx(
                    () => CardTalk(
                        nickname: controller
                            .talkSingleRx.value!.talk!.author!.nickname!,
                        avatar: 'assets/avatar/testavatar.svg',
                        content: controller.talkSingleRx.value!.talk!.content!),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
            SizedBox(
              height: 20,
            ),
            Text(
              '이어달린 톡 ',
              style: Typo(color: AppColor.greyscale80).body2_18B,
            ),
            controller.talkSingleRx.value != null
                ? Obx(
                    () => Column(
                      children:
                          controller.talkSingleRx.value!.childrenLength != 0
                              ? controller.talkSingleRx.value!.children!
                                  .map((e) => CardTalk(
                                      nickname: e.author!.nickname!,
                                      avatar: 'assets/avatar/testavatar.svg',
                                      content: e.content!))
                                  .toList()
                              : [
                                  Text('이어달린 톡 없음'),
                                ],
                    ),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          ],
        ),
      ),
    );
  }
}
