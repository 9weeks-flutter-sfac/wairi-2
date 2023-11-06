import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/controller/talk_controller.dart';
import 'package:sface/view/pages/talk_page/talk_detail.dart';

import 'package:sface/view/pages/talk_page/talk_entire.dart';
import 'package:sface/view/pages/talk_page/talk_hot.dart';
import 'package:sface/view/pages/talk_page/talk_talk.dart';

class TalkPage extends GetView<TalkController> {
  const TalkPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: controller.talkPageController,
      children: [
        TalkEntire(
          onTapHot: () {
            controller.talkPageController.jumpToPage(1);
          },
          onTapTalk: () {
            controller.talkPageController.jumpToPage(2);
          },
          onTapDetail: (p0) {
            controller
                .getSingleTalk(p0)
                .then((value) => controller.talkPageController.jumpToPage(3));
          },
        ),
        TalkHot(
          onTap: () {
            controller.talkPageController.jumpToPage(0);
          },
          onTapDetail: (p0) {
            controller
                .getSingleTalk(p0)
                .then((value) => controller.talkPageController.jumpToPage(3));
          },
        ),
        TalkTalk(
          onTap: () {
            controller.talkPageController.jumpToPage(0);
          },
          onDetailTap: (p0) {
            controller
                .getSingleTalk(p0)
                .then((value) => controller.talkPageController.jumpToPage(3));
          },
        ),
        TalkDetail(onTap: () {
          controller.talkPageController.jumpToPage(0);
        })
      ],
    );
  }
}
