import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/controller/profile_controller.dart';
import 'package:sface/view/widget/custom_textfield/signup_field.dart';

class ProfileTest extends GetView<ProfileController> {
  const ProfileTest({super.key});
  static const String route = '/profileTest';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignupField(
                controller: controller.nicknameController,
                hideInput: false,
                hintText: '닉네임을 입력해주세요.',
                isPw: false),
            SignupField(
                controller: controller.bioController,
                hideInput: false,
                hintText: 'bio',
                isPw: false),
            SignupField(
                controller: controller.positionController,
                hideInput: false,
                hintText: 'position',
                isPw: false),
            ElevatedButton(
              onPressed: () {
                controller.createProfile();
              },
              child: Text('프로필 생성'),
            ),
          ],
        ),
      )),
    );
  }
}
