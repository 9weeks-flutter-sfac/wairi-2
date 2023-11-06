// TODO Implement this library.import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/controller/signup_controller.dart';
import 'package:sface/view/pages/login_page.dart';
import 'package:sface/view/widget/input/input_with_label.dart';

class SignUpPage extends GetView<SignupController> {
  static const String route = '/signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 78,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black, //색변경
        ),
        backgroundColor: Colors.transparent, // 원래 배경색과 같게 설정
        elevation: 0, // 그림자 제거
        leading: IconButton(
          icon: Icon(Icons.navigate_before, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
        ),
        title: Text(
          '회원가입 하기',
          style: TextStyle(
            color: Color(0xFF333333),
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w700,
            fontSize: 18,
            letterSpacing: -0.02,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //controller: controller.nameController,
            InputWithLabel(
              boxWidth: 370,
              hint: '이름을 입력해주세요.',
              title: '이름',
              onChanged: (value) {},
              controller: TextEditingController(),
            ),
            SizedBox(height: 16.0),
            //controller: controller.emailController,
            InputWithLabel(
              boxWidth: 370,
              hint: '이메일을 입력해주세요.',
              title: '이메일',
              onChanged: (value) {},
              controller: TextEditingController(),
            ),
            SizedBox(height: 16.0),
            //controller: controller.phoneController,
            InputWithLabel(
              boxWidth: 370,
              hint: '비밀번호를 입력해주세요.',
              title: '비밀번호',
              onChanged: (value) {},
              controller: TextEditingController(),
            ),
            SizedBox(height: 16.0),
            //controller: controller.passwordController,
            InputWithLabel(
              boxWidth: 370,
              hint: '휴대폰 번호를 입력해주세요.',
              title: '휴대전화',
              onChanged: (value) {},
              controller: TextEditingController(),
            ),
            SizedBox(height: 16.0),
            const Spacer(), // 상단의 공간을 차지함
            SizedBox(
              width: 370.0,
              height: 56.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF337AFF), // 배경색
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 50.0), // Padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Radius
                  ),
                ),
                child: const Text(
                  '보내기',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Pretendard', // 폰트
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 119,
            ),
          ],
        ),
      ),
    );
  }
}
