import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sface/util/app_routes.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/pages/avatar_setup_page/avatar_setup.dart';
import 'package:sface/view/pages/splash_page.dart';
import 'package:sface/view/widget/input/input_default.dart';
import 'package:sface/view/widget/input/input_with_label.dart';

class CreateProfilePage extends StatefulWidget {
  const CreateProfilePage({super.key});

  static const String route = '/createpro';

  @override
  State<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> {
  String? selectedOption;
  TextEditingController nicknameController = TextEditingController();
  TextEditingController linkedInController = TextEditingController();
  TextEditingController githubController = TextEditingController();
  TextEditingController website1Controller = TextEditingController();
  TextEditingController website2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 56,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: SvgPicture.asset('assets/icons/Logo-notext.svg'),
            onPressed: () {
              Get.to(() => SplashPage());
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Icon_20/Alarm.svg'),
            ),
          ],
        ),
        body: Container(
          color: AppColor.greyscale5,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 370,
                height: 595,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin: EdgeInsets.fromLTRB(8, 89, 8, 58),
                padding: EdgeInsets.fromLTRB(15, 127, 15, 25),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InputWithLabel(
                            hint: '닉네임을 입력해주세요.',
                            title: '닉네임',
                            boxWidth: 340,
                            controller: nicknameController,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text('활동유형',
                              style:
                                  Typo(color: AppColor.greyscale80).body4_14M),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 110,
                                    minHeight: 49.0,
                                  ),
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: 'Developer',
                                        groupValue: selectedOption,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedOption = value as String?;
                                            print(selectedOption);
                                          });
                                        },
                                      ),
                                      Text('개발자',
                                          style:
                                              Typo(color: AppColor.greyscale80)
                                                  .body4_14R),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 110,
                                    minHeight: 49.0,
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: 'Designer',
                                        groupValue: selectedOption,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedOption = value as String?;
                                            print(selectedOption);
                                          });
                                        },
                                      ),
                                      Text('디자이너',
                                          style:
                                              Typo(color: AppColor.greyscale80)
                                                  .body4_14R),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 110,
                                    minHeight: 49.0,
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: 'HeadHunter',
                                        groupValue: selectedOption,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedOption = value as String?;
                                            print(selectedOption);
                                          });
                                        },
                                      ),
                                      Text('헤드헌터',
                                          style:
                                              Typo(color: AppColor.greyscale80)
                                                  .body4_14R),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          InputWithLabel(
                            hint: 'Linkedln URL/',
                            title: '링크 추가',
                            boxWidth: 340,
                            controller: linkedInController,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          InputDefault(
                            hint: 'Github URL/',
                            boxWidth: 340,
                            controller: githubController,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              InputDefault(
                                hint: '개인 웹사이트 URL',
                                boxWidth: 165,
                                controller: website1Controller,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InputDefault(
                                hint: '개인 웹사이트 URL',
                                boxWidth: 165,
                                controller: website2Controller,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 44,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 165.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selectedOption = null;
                                });
                                // TextEditingController를 사용하여 각각의 텍스트 필드 초기화
                                nicknameController.clear();
                                linkedInController.clear();
                                githubController.clear();
                                website1Controller.clear();
                                website2Controller.clear();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColor.primary5, // 배경색
                                padding: const EdgeInsets.fromLTRB(
                                    30, 10, 30, 10), // Padding
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(10.0), // Radius
                                  side: BorderSide(
                                      color: AppColor.primary40, width: 1.0),
                                ),
                              ),
                              child: const Text(
                                '초기화',
                                style: TextStyle(
                                  color: AppColor.primary40,
                                  fontSize: 18.0,
                                  fontFamily: 'Pretendard', // 폰트
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 165.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColor.primary80, // 배경색
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 50.0), // Padding
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(10.0), // Radius
                                ),
                              ),
                              child: const Text(
                                '저장하기',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'Pretendard',
                                  color: Colors.white, // 폰트
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity, // 또는 필요에 따라 너비 조절
                margin: EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: AppColor.primary5,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/Icon_70/man-a.svg'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '아바타 수정하기',
                          style: Typo(color: AppColor.primary80).body5_12R,
                        ),
                        IconButton(
                          onPressed: () {
                            createAvatar(context);
                          },
                          icon: SvgPicture.asset(
                              'assets/icons/Icon_20/editable.svg'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void createAvatar(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent, // 배경색을 투명하게 설정
          child: AvatarSetup(), // 다른 파일에서 가져온 위젯을 여기에 사용
        );
      },
    );
  }
}
