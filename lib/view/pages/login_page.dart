import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sface/controller/auth_controller.dart';
import 'package:sface/util/app_routes.dart';
import 'package:sface/util/color.dart';
import 'package:sface/view/pages/find_password_page.dart';
import 'package:sface/view/pages/signup_page.dart';
import 'package:sface/view/widget/custom_textfield/signup_field.dart';
// ignore_for_file: prefer_const_constructors

class LoginPage extends GetView<AuthController> {
  const LoginPage({super.key});
  static const String route = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/Icon_70/message.svg',
                    ),
                    SvgPicture.asset('assets/icons/Logo.svg'),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  child: Column(
                    children: [
                      SignupField(
                        controller: controller.emailController,
                        hideInput: false,
                        hintText: '이메일 주소를 입력해주세요.',
                        isPw: false,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SignupField(
                          controller: controller.pwController,
                          hideInput: true,
                          hintText: '비밀번호를 입력해주세요.',
                          isPw: true),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FindPasswordPage(),
                                ),
                              );
                            },
                            child: Text('비밀번호 찾기'),
                          ),
                          SizedBox(
                            height: 11.5,
                            child: VerticalDivider(
                              thickness: 0.5,
                              color: AppColor.greyscale10,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.testSignup);
                            },
                            child: Text('회원가입하기'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.95, 40),
                  ),
                  onPressed: () {
                    controller.login();
                  },
                  child: Text('로그인'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
