import 'package:flutter/material.dart';

class FindPasswordPage extends StatefulWidget {
  const FindPasswordPage({super.key});
  static const String route = '/findPassword';

  @override
  FindPasswordPageState createState() => FindPasswordPageState();
}

class FindPasswordPageState extends State<FindPasswordPage> {
  TextEditingController emailController = TextEditingController();
  bool isButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 원래 배경색과 같게 설정
        foregroundColor: Colors.black,
        elevation: 0,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.navigate_before)),
        title: Text(
          '비밀번호 찾기',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text(
                '기존에 가입하신 이메일을 입력하시면,\n 새로운 비밀번호를 보내드립니다.',
                style: TextStyle(
                    color: Colors.black, fontSize: 14.0, letterSpacing: -1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                '이메일',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: emailController,
              onChanged: (value) {
                setState(() {
                  isButtonEnabled = _isValidEmail(value);
                });
              },
              decoration: InputDecoration(
                hintText: '이메일을 입력해주세요.',
                filled: true,
                fillColor: const Color(0xFFF3F3F3), // 배경색
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // radius
                  borderSide: BorderSide.none, // 테두리 제거
                ),
              ),
            ),
            const Spacer(), // 상단의 공간을 차지함
            SizedBox(
              width: 370.0,
              height: 56.0,
              child: ElevatedButton(
                onPressed: isButtonEnabled ? () {} : null,
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

bool _isValidEmail(String email) {
  // 이메일 형식이 올바른지 확인하는 정규식
  final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  return emailRegex.hasMatch(email);
}
