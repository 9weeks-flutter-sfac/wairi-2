import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sface/controller/mogak_controller.dart';
import 'package:sface/model/mogak_model.dart';
import 'package:sface/model/mogak_top_model.dart';
import 'package:sface/util/color.dart';
import 'package:sface/view/pages/mogakko_page/mogakko_detail.dart';
import 'package:sface/view/pages/mogakko_page/mogakko_entire.dart';
import 'package:sface/view/pages/mogakko_page/mogakko_every.dart';
import 'package:sface/view/pages/mogakko_page/mogakko_group.dart';
import 'package:sface/view/pages/mogakko_page/mogakko_hot.dart';

class MogakkoPage extends GetView<MogakController> {
  MogakkoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.wait(
            [controller.getEntireMogak(), controller.getTopMogak()]),
        builder: (context, snapshot) {
          if (snapshot.hasData == false) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Text('Error');
          } else {
            return PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller.mogakPageController,
              onPageChanged: (int page) {
                controller.currentIdx = page;
              },
              children: [
                MogakkoEntire(
                  onTapHot: () {
                    controller.hotOrAll.value = true;
                    controller.mogakPageController.jumpToPage(1);
                  },
                  onTap2: () {
                    // 페이지 하나 만들어서 전체 모각코로 가는 것으로
                    controller.hotOrAll.value = false;
                    controller.mogakPageController.jumpToPage(2);
                  },
                  onTapDetail: (p0) {
                    controller.mogakId.value = p0;
                    controller.getSingleMogak(p0);
                    controller.mogakPageController.jumpToPage(3);
                  },
                  floatingOnPressed: () {
                    controller.mogakPageController.jumpToPage(4);
                  },
                ),
                MogakkoHot(
                  onPressed: () {
                    controller.mogakPageController.jumpToPage(0);
                  },
                  onTapDetail: (p0) {
                    controller.mogakId.value = p0;
                    controller.mogakPageController.jumpToPage(3);
                  },
                ),
                MogakkoEvery(
                  onPressed: () {
                    controller.mogakPageController.jumpToPage(0);
                  },
                  onTapDetail: (p0) {
                    controller.mogakId.value = p0;
                    controller.mogakPageController.jumpToPage(3);
                  },
                ),
                MogakkoDetail(
                  avatar: 'assets/avatar/testavatar.svg',
                  onPressed: () {
                    controller.mogakPageController.jumpToPage(0);
                  },
                ),
                MogakkoGroup(
                  onPressed: () {
                    controller.mogakPageController.jumpToPage(0);
                  },
                ),
              ],
            );
          }
        });
  }
}
