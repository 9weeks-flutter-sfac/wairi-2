import 'package:flutter/material.dart';
import 'package:sface/view/pages/login_page.dart';
import 'package:sface/view/widget/alert/alert_242_with_icon2.dart';
import 'package:sface/view/widget/input/input_with_label.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  static const String route = '/changepw';

  @override
  ChangePasswordPageState createState() => ChangePasswordPageState();
}

class ChangePasswordPageState extends State<ChangePasswordPage> {
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
            InputWithLabel(
              boxWidth: 370,
              title: '현재 비밀번호',
              hint: '비밀번호',
              onChanged: (value) {
                setState(() {});
              },
              controller: TextEditingController(),
            ),
            SizedBox(
              height: 20,
            ),
            InputWithLabel(
              boxWidth: 370,
              title: '새 비밀번호',
              hint: '비밀번호',
              onChanged: (value) {
                setState(() {});
              },
              controller: TextEditingController(),
            ),
            const Spacer(), // 상단의 공간을 차지함
            SizedBox(
              width: 370.0,
              height: 56.0,
              child: ElevatedButton(
                onPressed: () {
                  // 여기에 이메일을 사용하여 비밀번호 찾기 로직을 추가하세요.
                  // findPassword 함수를 호출하거나 원하는 방식으로 구현하세요.
                },
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
}
