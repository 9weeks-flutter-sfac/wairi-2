import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:sface/controller/catchupfile_controller.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/catchup.dart';
// ignore_for_file: prefer_const_constructors

class CatchupEntire extends GetView<CatchupFileController> {
  const CatchupEntire({
    super.key,
    required this.onTapHot,
    required this.onTapEntire,
  });

  static const String route = '/catchup_page/catchup_entire';

  final void Function() onTapHot;
  final void Function() onTapEntire;

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, // 만약 위 상태창을 없앨 것이라면 사용
    //     overlays: [SystemUiOverlay.bottom]);

    return Scaffold(
      backgroundColor: AppColor.greyscale10,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 1,
                color: Color.fromARGB(255, 231, 231, 231),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(hintText: '내용 검색하기'),
                ),
              ),
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
                              SvgPicture.asset('assets/icons/Icon_20/dart.svg'),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '핫한 캐치업',
                                  style: Typo(color: AppColor.greyscale80)
                                      .body2_18B,
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                              onTap: onTapHot,
                              child: SvgPicture.asset(
                                  'assets/icons/Icon_20/Right.svg')),
                        ],
                      ),
                    ),
                    controller.catchupListRx.value == null
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Obx(
                            () => Catchup(
                              avatar: 'assets/avatar/testavatar.svg',
                              nickname: controller.catchupListRx.value?[0]
                                      .author.nickname ??
                                  '값 없음',
                              content:
                                  controller.catchupListRx.value?[0].content ??
                                      '값 없음',
                              date: controller.catchupListRx.value?[0].updatedAt
                                      ?.split('T')[0] ??
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
                            SvgPicture.asset('assets/icons/Icon_20/dart.svg'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '캐치업',
                                style:
                                    Typo(color: AppColor.greyscale80).body2_18B,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                            onTap: onTapEntire,
                            child: SvgPicture.asset(
                                'assets/icons/Icon_20/Right.svg')),
                      ],
                    ),
                  ),
                  Obx(
                    () => Column(
                        children: controller.catchupListRx.value == null
                            ? [
                                Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ]
                            : controller.catchupListRx.value!
                                .map((e) => Catchup(
                                      avatar: 'assets/avatar/testavatar.svg',
                                      nickname: e.author.nickname,
                                      content: e.content,
                                      date: e.updatedAt!.split('T')[0],
                                    ))
                                .toList()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
