import 'package:flutter/material.dart';
import 'package:sface/main.dart';
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
                  height: 52,
                  child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            '마이페이지에서 새롭게 비밀번호를 변경해보세요!',
                            style: Typo(color: Colors.white).body4_14R,
                          ),
                        ),
                        Spacer(), 
                        IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.close),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                      side: BorderSide(color: Colors.black38, width: 1),
                    ),
                    color: Color.fromARGB(255, 77, 78, 77),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
