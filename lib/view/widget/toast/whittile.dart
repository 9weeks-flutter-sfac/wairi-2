import 'package:flutter/material.dart';
import 'package:sface/main.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr, // 또는 rtl, 필요에 따라 변경
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  width: 242,
                  height: 87,
                  child: Card(
                    child: ListTile(
                      title: Text(
                        '로그인 실패',
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.2,
                          letterSpacing: -0.03,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 51, 51, 51),
                        ),
                      ),
                      subtitle: Text(
                        '틀린정보입니다. 다시 로그인해주세요.',
                        style: TextStyle(
                          fontSize: 12,
                          height: 1.2,
                          letterSpacing: -0.03,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 77, 77, 77),
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    elevation: 10,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
