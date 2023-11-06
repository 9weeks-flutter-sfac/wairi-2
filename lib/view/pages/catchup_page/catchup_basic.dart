// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sface/controller/catchupfile_controller.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/catchup.dart';

class catchup_basic extends GetView<CatchupFileController> {
  const catchup_basic({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8)),
            Column(
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: onTap, child: Icon(Icons.keyboard_arrow_left)),
                    SizedBox(
                      width: 200,
                    ),
                    Text(
                      '캐치업!',
                      style: Typo(color: AppColor.greyscale80).body2_18B,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(8)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(8)),
                    SvgPicture.asset(
                        'assets/icons/Icon_50/Property 1=Flutter.svg'),
                    Padding(padding: EdgeInsets.all(16)),
                    SvgPicture.asset(
                        'assets/icons/Icon_50/Property 1=Python.svg'),
                    Padding(padding: EdgeInsets.all(16)),
                    SvgPicture.asset('assets/icons/Icon_50/Property 1=Js.svg'),
                    Padding(padding: EdgeInsets.all(16)),
                    SvgPicture.asset(
                        'assets/icons/Icon_50/Property 1=React.svg'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset('assets/icons/Icon_30/Filter.svg'),
                    Padding(padding: EdgeInsets.all(4)),
                    Text(
                      '날짜순',
                      style: Typo(color: AppColor.primary80).body5_12M,
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(8)),
            controller.catchupListRx.value == null
                ? Column(children: [
                    Center(
                      child: CircularProgressIndicator(),
                    ),
                  ])
                : Obx(
                    () => Column(
                      children: controller.catchupListRx.value!
                          .map((e) => Catchup(
                                avatar: 'assets/avatar/testavatar.svg',
                                nickname: e.author.nickname,
                                content: e.content,
                                date: e.updatedAt?.split('T')[0],
                              ))
                          .toList(),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
