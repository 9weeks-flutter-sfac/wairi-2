import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/controller/auth_controller.dart';
import 'package:sface/controller/catchupfile_controller.dart';
import 'package:sface/controller/mogak_controller.dart';
import 'package:sface/controller/profile_controller.dart';
import 'package:sface/controller/signup_controller.dart';
import 'package:sface/controller/talk_controller.dart';
import 'package:sface/util/app_pages.dart';
import 'package:sface/util/app_routes.dart';
// ignore_for_file: unused_import
import 'package:sface/view/pages/catchup_page/catchup_delete.dart';
import 'package:sface/view/pages/catchup_page/catchup_filter.dart';
import 'package:sface/view/pages/catchup_page/catchup_profile.dart';
import 'package:sface/view/pages/mogakko_page/mogakko_detail.dart';
import 'package:sface/view/pages/my_page/my_page.dart';
import 'package:sface/view/pages/my_page/mypage_talk.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "Pretendard"),
      initialBinding: BindingsBuilder(() {
        Get.put(AuthController());
        Get.lazyPut(() => ProfileController(), fenix: true);
        Get.put(SignupController());
        Get.lazyPut(() => TalkController());
        Get.lazyPut(() => CatchupFileController(), fenix: true);
        Get.lazyPut(() => MogakController(), fenix: true);
      }),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.splash,
    );
  }
}
