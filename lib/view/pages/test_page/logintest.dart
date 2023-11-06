import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/controller/auth_controller.dart';
import 'package:sface/view/pages/test_page/profiletest.dart';

class LoginTest extends GetView<AuthController> {
  const LoginTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ElevatedButton(
              //   onPressed: () {
              //     controller.signup();
              //   },
              //   child: Text('회원가입'),
              // ),
              ElevatedButton(
                onPressed: () {
                  controller.login();
                },
                child: Text('로그인'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.withdraw();
                },
                child: Text('계정삭제'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('비밀번호 찾기'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.refreshToken();
                },
                child: Text('토큰 재발급'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.verifyEmail();
                },
                child: Text('이메일 인증'),
              ),

              ElevatedButton(
                onPressed: () {
                  controller.getMyProfile('');
                },
                child: Text(
                    '나의 프로필 조회'), // 로그인 시, 나의 프로필 조회를 해서 값이 있으면 바로 메인 화면으로 이동
              ),
              ElevatedButton(
                onPressed: () {
                  controller.getSingleMogak();
                },
                child: Text('단일 모각 조회'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.getEntireMogak();
                },
                child: Text('전체 모각 조회'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => ProfileTest());
                },
                child: Text('이동'),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
