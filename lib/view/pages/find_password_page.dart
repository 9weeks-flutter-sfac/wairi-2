import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/controller/auth_controller.dart';
import 'package:sface/view/pages/login_page.dart';
import 'package:sface/view/widget/alert/alert_242_with_icon2.dart';
import 'package:sface/view/widget/input/input_with_label.dart';
import 'package:flutter_svg/svg.dart';

class FindPasswordPage extends StatefulWidget {
  const FindPasswordPage({super.key});

  @override
  FindPasswordPageState createState() => FindPasswordPageState();
}

class FindPasswordPageState extends State<FindPasswordPage> {
  TextEditingController emailController = TextEditingController();
  bool isButtonEnabled = false;
  var controller = Get.find<AuthController>();

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
          '비밀번호 찾기',
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '기존에 가입하신 이메일을 입력하시면, \n    새로운 비밀번호를 보내드립니다.',
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                letterSpacing: -0.02,
                height: 1.2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InputWithLabel(
              boxWidth: 370,
              title: '이메일',
              hint: '이메일을 입력해주세요.',
              onChanged: (value) {
                setState(() {
                  isButtonEnabled = _isValidEmail(value);
                });
              },
              controller: TextEditingController(),
            ),
            const Spacer(), // 상단의 공간을 차지함
            SizedBox(
              width: 370.0,
              height: 56.0,
              child: ElevatedButton(
                onPressed: isButtonEnabled
                    ? () {
                        _showPopup();
                        // 여기에 이메일을 사용하여 비밀번호 찾기 로직을 추가하세요.
                        // findPassword 함수를 호출하거나 원하는 방식으로 구현하세요.
                      }
                    : null,
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

  void findPassword(String email) {
    // 여기에 비밀번호 찾기 로직을 추가하세요.
    // 백엔드 API 호출 등이 여기에 들어갈 수 있어요.
  }

  bool _isValidEmail(String email) {
    // 이메일 형식이 올바른지 확인하는 정규식
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegex.hasMatch(email);
  }

  void _showPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Alert242withicon2(
          title: '새로운 비밀번호를 보냈습니다!',
          content: '메일함을 확인해주세요.',
          iconImage: SvgPicture.asset('assets/icons/Icon_50/Send.svg'),
          btnText: '확인하기',
          onPressed: () {
            print(emailController.text);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
        );
      },
    );
  }
}
