import 'package:flutter/material.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class Alert242withicon extends StatelessWidget {
  final Widget iconImage;
  final String title;
  final String content;
  final VoidCallback onDeletePressed;

  const Alert242withicon({
    Key? key,
    required this.title,
    required this.onDeletePressed,
    required this.iconImage,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: Container(
        width: 242.0,
        padding: EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 24.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Color(0x40000000),
              offset: Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.0),
            Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: iconImage,
              ),
            ),
            SizedBox(height: 8.0),
            Center(
              child: Text(
                title,
                style: Typo(color: AppColor.greyscale80).body3_16B,
              ),
            ),
            SizedBox(height: 8.0),
            Center(
              child: Text(
                content,
                style: Typo(color: AppColor.greyscale40).body5_12R,
              ),
            ),
            SizedBox(height: 24.0),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primary5,
                    minimumSize: Size(100.0, 32.0),
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      side: BorderSide(
                        color: AppColor.primary40,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Text(
                    '취소하기',
                    style: Typo(color: AppColor.primary60).body4_14R,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    onDeletePressed();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primary80,
                    minimumSize: Size(100.0, 32.0),
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                  child: Text(
                    '삭제하기',
                    style: Typo(color: AppColor.greyscale0).body4_14R,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
