import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:sface/controller/mogak_controller.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class MogakkoGroup extends GetView<MogakController> {
  const MogakkoGroup({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    personDialog() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Obx(
                () => DropdownButton(
                    value: controller.selectedValue.value,
                    items: <int>[1, 2, 3, 4].map((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      controller.selectedValue.value = newValue!;
                    }),
              ),
            );
          });
    }

    statusDialog() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('a'),
            );
          });
    }

    return Scaffold(
      backgroundColor: AppColor.greyscale20,
      body: Container(
        child: Column(
          children: [
            Container(
              height: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: onPressed,
                    icon: SvgPicture.asset(
                      'assets/icons/Icon_20/Right.svg',
                      width: 20,
                    ),
                  ),
                  Text(
                    '그룹 만들기',
                    style: Typo(color: AppColor.greyscale80).body2_18B,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 230,
              color: Colors.white,
              child: Column(
                children: [
                  TextField(
                    controller: controller.mogakGroupContentController,
                    decoration: InputDecoration(hintText: '제목을 입력해주세요.'),
                  ),
                  TextField(
                    controller: controller.mogakGroupTitleController,
                    decoration: InputDecoration(hintText: '내용을 입력해주세요.'),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      personDialog();
                    },
                    child: Text('모집인원'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      statusDialog();
                    },
                    child: Text('모집상태'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.createMogak();
                    },
                    child: Text('등록하기'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
