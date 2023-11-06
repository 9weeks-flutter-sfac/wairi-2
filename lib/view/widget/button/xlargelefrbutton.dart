import 'package:flutter/material.dart';



class XLargeLefticon extends StatelessWidget {
  const XLargeLefticon({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            margin: EdgeInsets.only(top: 164.0, left: 153.0),
            child: ElevatedButton.icon(
              onPressed: () {
                // 버튼을 눌렀을 때 수행할 동작을 여기에 추가하세요.
              },
              style:  ElevatedButton.styleFrom(
                primary: Color(0xFF337AFF),  // 색상을 #337AFF로 지정
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),  // 반경 10px
                ),
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
              ),
             icon: Icon(
                Icons.edit,
                color: Color(0xFFFFFFFF), // 아이콘 색상을 #FFFFFF로 지정
              ),
                label: Container(
                width: 370.0,
                height: 56.0,
                alignment: Alignment.center,
                child: Text(
                  '편집',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF), // 텍스트 색상을 #FFFFFF로 지정
                    fontSize: 18.0,
                  ),
                ),
              ),

          ),
          ),
      ),
      ),
    );
  }
}