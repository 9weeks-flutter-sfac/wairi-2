// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sface/controller/catchupfile_controller.dart';

import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/catchup.dart';

class CatchupHot extends GetView<CatchupFileController> {
  const CatchupHot({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    filterDialog() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.catchupFilter("desName");
                    },
                    child: Text('이름 내림차순'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.catchupFilter("ascName");
                    },
                    child: Text('이름 오름차순'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.catchupFilter("ascDate");
                    },
                    child: Text('날짜 오름차순'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.catchupFilter("desDate");
                    },
                    child: Text('날짜 내림차순'),
                  ),
                ],
              ),
            );
          });
    }

    return Scaffold(
        body: ListView(shrinkWrap: true, physics: ScrollPhysics(), children: [
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
              InkWell(onTap: onTap, child: Icon(Icons.keyboard_arrow_left)),
              SizedBox(
                width: 200,
              ),
              Text(
                '핫한 캐치업',
                style: Typo(color: AppColor.greyscale80).body2_18B,
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(8)),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(8)),
              SvgPicture.asset('assets/icons/Icon_50/Property 1=Flutter.svg'),
              Padding(padding: EdgeInsets.all(16)),
              SvgPicture.asset('assets/icons/Icon_50/Property 1=Python.svg'),
              Padding(padding: EdgeInsets.all(16)),
              SvgPicture.asset('assets/icons/Icon_50/Property 1=Js.svg'),
              Padding(padding: EdgeInsets.all(16)),
              SvgPicture.asset('assets/icons/Icon_50/Property 1=React.svg'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                  onTap: () {
                    filterDialog();
                  },
                  child: SvgPicture.asset('assets/icons/Icon_30/Filter.svg')),
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
      Obx(
        () => Column(
            children: controller.catchupListRx.value == null
                ? [
                    Center(
                      child: CircularProgressIndicator(),
                    )
                  ]
                : controller.catchupListRx.value!
                    .map(
                      (e) => Catchup(
                          avatar: 'assets/avatar/testavatar.svg',
                          nickname: e.author.nickname,
                          content: e.content,
                          date: e.updatedAt!.split("T")[0]),
                    )
                    .toList()),
      ),
    ]));
  }
}
