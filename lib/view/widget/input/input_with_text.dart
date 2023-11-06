import 'package:flutter/material.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class InputWithText extends StatefulWidget {
  final double boxWidth;
  final String hint;
  final String title;
  final String text;

  const InputWithText({
    super.key,
    required this.hint,
    required this.title,
    required this.text,
    required this.boxWidth,
    required TextEditingController controller,
  });

  @override
  _InputWithTextState createState() => _InputWithTextState();
}

class _InputWithTextState extends State<InputWithText> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: widget.boxWidth,
        height: 92,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: Typo(color: AppColor.greyscale80).body4_14R,
            ),
            SizedBox(
              height: 8,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: TextField(
                obscureText: obscureText,
                style: Typo(color: AppColor.greyscale80).body4_14R,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.greyscale5,
                  contentPadding: EdgeInsets.fromLTRB(16, 15.5, 198, 15.5),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: widget.hint,
                  hintStyle: Typo(color: AppColor.greyscale30).body4_14R,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: IconButton(
                      icon: Image.asset(
                        obscureText
                            ? "assets/icons/Icon_20/_CantSee.svg"
                            : "assets/icons/Icon_20/_See.svg",
                        width: 20,
                        height: 20,
                      ),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              widget.text,
              style: Typo(color: AppColor.primary80).body5_12R,
            ),
          ],
        ),
      ),
    );
  }
}
