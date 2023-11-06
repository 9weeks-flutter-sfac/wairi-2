import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sface/controller/mogak_controller.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/card_mogakko.dart';
import 'package:sface/view/widget/custom_textfield/signup_field.dart';

// ignore_for_file: prefer_const_constructors

class MogakkoEntire extends GetView<MogakController> {
  const MogakkoEntire({
    super.key,
    required this.onTapHot,
    required this.onTap2,
    required this.onTapDetail,
    required this.floatingOnPressed,
  });

  static const String route = '/mogakko_page/mogakko_entire';
  final void Function() onTapHot;
  final void Function() onTap2;
  final void Function(String) onTapDetail;
  final void Function() floatingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: floatingOnPressed,
        child: SvgPicture.asset(
          'assets/icons/Icon_30/Write.svg',
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
      ),
      backgroundColor: AppColor.greyscale10,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            SignupField(
              hideInput: false,
              hintText: '모집합니다',
              hintStyle: Typo(color: AppColor.greyscale80).body4_14R,
              isPw: false,
              icon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SvgPicture.asset(
                  'assets/icons/searchfield.svg',
                  width: 18,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/Icon_20/letter.svg'),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '핫한 모각코',
                                        style: Typo(color: AppColor.greyscale80)
                                            .body2_18B,
                                      ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: onTapHot,
                                  child: SvgPicture.asset(
                                      'assets/icons/Icon_20/Right.svg'),
                                ),
                              ],
                            ),
                          ),
                          controller.topMogakListRx.value == null
                              ? Center(
                                  child: CircularProgressIndicator(),
                                )
                              : Obx(
                                  () => CardMogakko(
                                    onTap: () {
                                      onTapDetail(controller
                                          .topMogakListRx.value![0].id);
                                      controller.hotOrAll.value = true;
                                    },
                                    avatar: 'assets/avatar/testavatar.svg',
                                    nickname: controller.topMogakListRx
                                            .value?[0].author.nickname ??
                                        '값 없음',
                                    content: controller
                                            .topMogakListRx.value?[0].content ??
                                        '값 없음',
                                    title: controller
                                            .topMogakListRx.value?[0].title ??
                                        '값 없음',
                                    date: controller
                                            .topMogakListRx.value?[0].updatedAt
                                            .split('T')[0] ??
                                        '값 없음',
                                    position: controller.topMogakListRx
                                            .value?[0].author.position ??
                                        '값 없음',
                                    maxMember: controller
                                            .topMogakListRx.value?[0].maxMember
                                            .toString() ??
                                        '값 없음',
                                    currentMember: controller.topMogakListRx
                                            .value?[0].appliedProfiles.length
                                            .toString() ??
                                        '값 없음',
                                  ),
                                ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/icons/Icon_20/letter.svg'),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '모든 모각코',
                                      style: Typo(color: AppColor.greyscale80)
                                          .body2_18B,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                  onTap: onTap2,
                                  child: SvgPicture.asset(
                                      'assets/icons/Icon_20/Right.svg'))
                            ],
                          ),
                        ),
                        Obx(
                          () => Column(
                            children: controller.mogakListRx.value != null
                                ? controller.mogakListRx.value!
                                    .map(
                                      (e) => CardMogakko(
                                        onTap: () {
                                          onTapDetail(e.id as String);
                                          controller.hotOrAll.value = false;
                                        },
                                        avatar: 'assets/avatar/testavatar.svg',
                                        date: e.createdAt!.split('T')[0],
                                        nickname: e.author?.nickname ?? '값없음',
                                        title: e.title ?? 'a',
                                        content: e.content,
                                        position: e.author?.position ?? '값없음',
                                        currentMember: e.appliedProfiles?.length
                                                .toString() ??
                                            '값 없음',
                                        maxMember: e.maxMember.toString(),
                                      ),
                                    )
                                    .toList()
                                : [
                                    Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  ],
                          ),
                        )
                      ],
                    ),
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
