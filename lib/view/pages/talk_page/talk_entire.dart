import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:sface/controller/talk_controller.dart';

import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/card_talk.dart';

class TalkEntire extends GetView<TalkController> {
  const TalkEntire(
      {super.key,
      required this.onTapHot,
      required this.onTapTalk,
      required this.onTapDetail});

  final void Function() onTapHot;
  final void Function() onTapTalk;
  final void Function(String) onTapDetail;

  @override
  Widget build(BuildContext context) {
    controller.getTalk();
    writeTalkDialog() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.all(8),
              backgroundColor: Colors.amber,
              content: Container(
                width: 370,
                height: 260,
                child: Column(
                  children: [
                    TextField(
                      controller: controller.talkEditingController,
                      onChanged: controller.onChangeTalk,
                    ),
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
                            controller.createTalk("my");
                            controller.dummy.value += controller.dummy.value;
                          },
                          child: Text('등록하기'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          });
    }

    completeDialog() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('삭제되었습니다'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    controller.getTalk();
                  },
                  child: Text('확인'),
                ),
              ],
            ),
          );
        },
      );
    }

    deleteTalkDialog(String id) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('취소하기'),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.deleteMyTalk(id);
                    Navigator.pop(context);
                    completeDialog();
                    controller.dummy.value += controller.dummy.value;
                  },
                  child: Text('삭제하기'),
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primary80,
        onPressed: () {
          writeTalkDialog();
        },
        child: SvgPicture.asset(
          'assets/icons/Icon_30/Community.svg',
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          Container(
            color: Color.fromARGB(255, 235, 235, 235),
            child: Center(
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
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          '🔥핫한 톡',
                          style: Typo(color: AppColor.greyscale80).body2_18B,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: InkWell(
                            onTap: onTapHot, child: Icon(Icons.chevron_right)),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      controller.talkId.value =
                          controller.talkListTopRx.value![0].id!;
                      onTapDetail(
                          controller.talkListTopRx.value![0].id as String);
                    },
                    child: controller.talkListTopRx.value == null
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : CardTalk(
                            nickname: controller
                                    .talkListTopRx.value![0].author!.nickname ??
                                '값 없음',
                            avatar: 'assets/avatar/testavatar.svg',
                            content: controller.talkListTopRx.value![0].content
                                as String,
                          ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          '🔥톡톡톡',
                          style: Typo(color: AppColor.greyscale80).body2_18B,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: InkWell(
                            onTap: onTapTalk, child: Icon(Icons.chevron_right)),
                      ),
                    ],
                  ),
                  controller.dummy.value > 0
                      ? Column(
                          children: controller.talkListRx.value != null
                              ? controller.talkListRx.value!
                                  .map(
                                    (e) => e.author!.nickname ==
                                            controller.profile!.nickname
                                        ? Obx(
                                            () => InkWell(
                                              onTap: () {
                                                controller.talkId.value = e.id!;
                                                onTapDetail(e.id as String);
                                              },
                                              onLongPress: () {
                                                controller.selectedTalk.value =
                                                    e.id!;
                                              },
                                              child: controller
                                                          .selectedTalk.value ==
                                                      e.id
                                                  ? Stack(
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Container(
                                                          child: CardTalk(
                                                              isClick: true,
                                                              nickname: e
                                                                  .author!
                                                                  .nickname!,
                                                              avatar:
                                                                  'assets/avatar/testavatar.svg',
                                                              content:
                                                                  e.content!),
                                                        ),
                                                        Positioned(
                                                          right: 18,
                                                          top: -10,
                                                          child: IconButton(
                                                              onPressed: () {},
                                                              icon: SvgPicture
                                                                  .asset(
                                                                      'assets/icons/Icon_20/editable.svg')),
                                                        ),
                                                        Positioned(
                                                          right: -12,
                                                          top: -10,
                                                          child: IconButton(
                                                            onPressed: () {
                                                              deleteTalkDialog(
                                                                  e.id!);
                                                            },
                                                            icon: SvgPicture.asset(
                                                                'assets/icons/Icon_20/Delete_Float.svg'),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  : CardTalk(
                                                      nickname:
                                                          e.author!.nickname!,
                                                      avatar:
                                                          'assets/avatar/testavatar.svg',
                                                      content: e.content!),
                                            ),
                                          )
                                        : InkWell(
                                            onTap: () {
                                              controller.talkId.value = e.id!;
                                              onTapDetail(e.id as String);
                                            },
                                            onDoubleTap: () {
                                              controller.selectedTalk.value =
                                                  '';
                                            },
                                            child: CardTalk(
                                                nickname: e.author!.nickname!,
                                                avatar:
                                                    'assets/avatar/testavatar.svg',
                                                content: e.content!),
                                          ),
                                  )
                                  .toList()
                              : [
                                  Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ],
                        )
                      : Text("error"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
