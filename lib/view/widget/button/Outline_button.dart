import 'package:flutter/material.dart';

class Outlinebutton extends StatelessWidget {
  const Outlinebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 96.0, left: 20.0),
        child: OutlinedButton.icon(
          onPressed: () {
            // 버튼을 눌렀을 때 수행할 동작을 여기에 추가하세요.
          },
          style: OutlinedButton.styleFrom(
            primary: Color(0xFF99BDFF), // 테두리 색상을 #99BDFF로 지정
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // 반경 10px
            ),
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
          ),
          icon: Icon(
            Icons.edit,
            color: Color(0xFFFFFFFF), // 아이콘 색상을 #FFFFFF로 지정
          ),
          label: Container(
            width: 161.0,
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
    );
  }
}
