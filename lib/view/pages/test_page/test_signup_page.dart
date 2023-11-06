import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/controller/signup_controller.dart';
import 'package:sface/view/widget/custom_textfield/signup_field.dart';

class TestSignupPage extends GetView<SignupController> {
  const TestSignupPage({super.key});
  static const String route = '/testSignup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SignupField(
                controller: controller.nameController,
                hideInput: false,
                hintText: '이름을 입력해주세요',
                isPw: false),
            SignupField(
                controller: controller.emailController,
                hideInput: false,
                hintText: '이메일을 입력해주세요',
                isPw: false),
            SignupField(
                controller: controller.pwController,
                hideInput: true,
                hintText: '비밀번호을 입력해주세요',
                isPw: true),
            SignupField(
                controller: controller.phoneController,
                hideInput: false,
                hintText: '휴대전화를 입력해주세요',
                isPw: false),
            ElevatedButton(
              onPressed: () {
                controller.signup();
              },
              child: Text('회원가입하기'),
            ),
          ],
        ),
      ),
    );
  }
}
