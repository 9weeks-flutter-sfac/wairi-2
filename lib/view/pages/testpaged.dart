import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/controller/talk_controller.dart';
import 'package:sface/view/widget/cards/card_talk.dart';

void main() {
  runApp(TestPage());
}

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: BindingsBuilder(() {
          Get.put(TalkController());
        }),
        home: MyWidget());
  }
}

class MyWidget extends GetView<TalkController> {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        // CardTalk(
        //   nickname: controller.talkList?[0].author?.nickname ?? '값없음',
        //   avatar: controller.talkList?[0].author?.avatar ?? '답없음',
        //   content: controller.talkList?[0].content ?? '답없음',
        // ),
        ElevatedButton(
          onPressed: () {
            controller.getTalk();
          },
          child: Text('출력'),
        ),
      ],
    )));
  }
}
