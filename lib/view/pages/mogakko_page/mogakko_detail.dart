import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sface/controller/mogak_controller.dart';
import 'package:sface/model/mogak_single_model.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/avatar_with.dart';

import 'package:sface/view/widget/cards/card_button_grey.dart';
import 'package:sface/view/widget/cards/card_talk.dart';

import 'package:sface/view/widget/custom_textfield/signup_field.dart';

class MogakkoDetail extends GetView<MogakController> {
  const MogakkoDetail({
    super.key,
    this.onPressed,
    required this.avatar,
  });
  final void Function()? onPressed;

  final String avatar;

  @override
  Widget build(BuildContext context) {
    completeApply() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              contentPadding: EdgeInsets.zero,
              content: Container(
                height: 139,
                width: 242,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('그룹에 참여가 완료되었습니다!'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('확인하기'),
                    ),
                  ],
                ),
              ),
            );
          });
    }

    askApply() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            content: Container(
              height: 139,
              width: 242,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('그룹에 참여하시겠습니까?'),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('취소하기'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          controller.postMogakApply();
                          completeApply();
                        },
                        child: Text('참여하기'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      bottomSheet: Container(
        height: 80,
        color: Colors.grey,
        child: Center(
          child: TextField(
            controller: controller.mogakDetailController,
            decoration: InputDecoration(
              suffixIcon: InkWell(
                  onTap: () {
                    controller.createMogakTalk();
                  },
                  child: SvgPicture.asset('assets/icons/Icon_20/Send.svg')),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: AppColor.greyscale10,
              height: 65,
              child: Row(
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
                    controller.hotOrAll.value == true ? '핫한 모각코' : '모든 모각코',
                    style: Typo(color: AppColor.greyscale80).body2_18B,
                  ),
                  SizedBox(
                    width: 50,
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 500,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Obx(
                            () => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: controller.singleMogakRx.value == null
                                  ? const [
                                      Center(
                                        child: CircularProgressIndicator(),
                                      )
                                    ]
                                  : [
                                      ListTile(
                                          leading: SvgPicture.asset(avatar),
                                          title: Row(
                                            children: [
                                              Text(
                                                  controller.singleMogakRx
                                                          .value!.title ??
                                                      '값 없음',
                                                  style: Typo(
                                                          color: AppColor
                                                              .greyscale80)
                                                      .body5_12B),
                                              CardButtonGrey(
                                                text: '수료생',
                                              ),
                                            ],
                                          ),
                                          trailing: SvgPicture.asset(
                                              'assets/icons/Icon_20/Property 1=Like.svg')),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 18),
                                        child: Row(
                                          children: [
                                            Text(
                                              '[모집중]',
                                              style: Typo(
                                                      color: AppColor.primary80)
                                                  .body3_16B,
                                            ),
                                            Container(
                                              width: 120,
                                              child: Text(
                                                controller.singleMogakRx.value!
                                                        .title ??
                                                    '값 없음',
                                                overflow: TextOverflow.ellipsis,
                                                style: Typo(
                                                        color: AppColor
                                                            .greyscale80)
                                                    .body3_16B,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(18, 12, 18, 0),
                                        child: Text(
                                          controller.singleMogakRx.value!
                                                  .content ??
                                              '값 없음',
                                          maxLines: 8,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                18, 12, 0, 0),
                                            child: Row(
                                              children: [
                                                CardButtonGrey(
                                                  text: '# 플러터',
                                                ),
                                                CardButtonGrey(
                                                  text: '업데이트',
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                18, 12, 18, 0),
                                            child: Text(
                                              controller.singleMogakRx.value!
                                                      .updatedAt
                                                      .toString() ??
                                                  '값 없음',
                                              style: Typo(
                                                      color:
                                                          AppColor.greyscale40)
                                                  .body5_12R,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 14, vertical: 12),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/Icon_70/man-who.svg',
                                              width: 25,
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: controller
                                                                  .singleMogakRx
                                                                  .value!
                                                                  .appliedProfiles !=
                                                              null
                                                          ? controller
                                                              .singleMogakRx
                                                              .value!
                                                              .appliedProfiles
                                                              ?.length
                                                              .toString()
                                                          : '값 없음',
                                                      style: Typo(
                                                              color: AppColor
                                                                  .primary80)
                                                          .body5_12B),
                                                  TextSpan(
                                                      text:
                                                          '/${controller.singleMogakRx.value!.maxMember.toString()}참여',
                                                      style: Typo(
                                                              color: AppColor
                                                                  .greyscale80)
                                                          .body5_12B),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 24,
                                            ),
                                            AvatarWith(
                                              nickname: '캐서린',
                                            ),
                                            SizedBox(
                                              width: 24,
                                            ),
                                            AvatarWith(nickname: '캐서린'),
                                            SizedBox(
                                              width: 24,
                                            ),
                                            AvatarWith(nickname: '캐서린'),
                                            SizedBox(
                                              width: 24,
                                            ),
                                            AvatarWith(nickname: '캐서린'),
                                            SizedBox(
                                              width: 24,
                                            ),
                                            AvatarWith(nickname: '캐서린'),
                                            SizedBox(
                                              width: 24,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          width: double.infinity,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              askApply();
                                            },
                                            child: Text('참여하기'),
                                          ),
                                        ),
                                      ),
                                    ],
                            ),
                          ),
                        ),
                        Container(
                          height: 10,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/Icon_20/speaker.svg'),
                              Text(
                                '이어달린 톡',
                                style:
                                    Typo(color: AppColor.greyscale80).body2_18B,
                              )
                            ],
                          ),
                          Obx(
                            () => Column(
                                children: controller.singleMogakRx.value == null
                                    ? const [
                                        Center(
                                          child: CircularProgressIndicator(),
                                        )
                                      ]
                                    : controller.singleMogakRx.value!.talks!
                                            .isNotEmpty
                                        ?
                                        // [
                                        //     Text(
                                        //         '${controller.singleMogakRx.value!.talks!.length.toString()}')
                                        //   ]
                                        controller.singleMogakRx.value!.talks!
                                            .map((e) => CardTalk(
                                                nickname: 'test',
                                                avatar:
                                                    'assets/avatar/testavatar.svg',
                                                content: 'testContent'))
                                            .toList()
                                        : [Text('이어달린 톡 없음')]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 70)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
