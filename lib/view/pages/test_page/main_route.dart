import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/controller/auth_controller.dart';
import 'package:sface/controller/catchupfile_controller.dart';
import 'package:sface/controller/mogak_controller.dart';

import 'package:sface/view/pages/catchup_page/catchup_page.dart';
import 'package:sface/view/pages/home_page.dart';

import 'package:sface/view/pages/mogakko_page/mogakko_page.dart';
import 'package:sface/view/pages/my_page/my_page.dart';
import 'package:sface/view/pages/my_page/mypage_talk.dart';
import 'package:sface/view/pages/space_page/spacer_main.dart';
import 'package:sface/view/pages/talk_page/talk_page.dart';
import 'package:sface/view/widget/bottom_menu_bar/bottom_menu_bar.dart';
import 'package:sface/view/widget/top_bar/top_bar_login.dart';

class MainRoute extends StatefulWidget {
  const MainRoute({super.key});

  static const String route = '/mainRoute';

  @override
  State<MainRoute> createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRoute> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  void _onPageChanged(int index) {
    if (_currentIndex == index) return;
    Get.find<MogakController>().mogakPageController.jumpToPage(0);
    Get.find<CatchupFileController>().index.value =
        Get.find<CatchupFileController>().index.value + 1;

    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBarLogin(),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomePage(),
          TalkPage(),
          CatchupPage(),
          MogakkoPage(),
          SpacerMain()
        ],
      ),
      bottomNavigationBar: BottomMenuBar(
        currentIndex: _currentIndex,
        onTap: _onPageChanged,
      ),
    );
  }
}
