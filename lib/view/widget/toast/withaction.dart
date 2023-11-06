import 'package:flutter/material.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  width: 370,
                  height: 87,
                  child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '로그인 실패',
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.2,
                                  letterSpacing: -0.03,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 51, 51, 51),
                                ),
                              ),
                              Text(
                                '틀린 정보입니다. 다시 로그인해주세요.',
                                style: TextStyle(
                                  fontSize: 12,
                                  height: 1.2,
                                  letterSpacing: -0.03,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 77, 77, 77),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 24,
                          child: ElevatedButton(
                            onPressed: () {
                             
                            },
                            child: Text('확인'),
                          ),
                        ),
                      ],
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
