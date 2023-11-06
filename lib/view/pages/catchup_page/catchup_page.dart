import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sface/controller/catchupfile_controller.dart';
import 'package:sface/view/pages/catchup_page/catchup_basic.dart';
import 'package:sface/view/pages/catchup_page/catchup_entire.dart';
import 'package:sface/view/pages/catchup_page/catchup_hot.dart';

class CatchupPage extends GetView<CatchupFileController> {
  const CatchupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: controller.catchupPageController,
      children: [
        CatchupEntire(
          onTapEntire: () {
            controller.catchupPageController.jumpToPage(2);
          },
          onTapHot: () {
            controller.catchupPageController.jumpToPage(1);
          },
        ),
        CatchupHot(
          onTap: () {
            controller.catchupPageController.jumpToPage(0);
          },
        ),
        catchup_basic(onTap: () {
          controller.catchupPageController.jumpToPage(0);
        }),
      ],
    );
  }
}
