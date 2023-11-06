import 'package:flutter/material.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class ErrorInput extends StatefulWidget {
  final double boxWidth;
  final String hint;
  final String text;

  const ErrorInput({
    super.key,
    required this.hint,
    required this.text,
    required this.boxWidth,
    required TextEditingController controller,
  });

  @override
  _ErrorInputState createState() => _ErrorInputState();
}

class _ErrorInputState extends State<ErrorInput> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: widget.boxWidth,
        height: 66,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: TextField(
                obscureText: obscureText,
                style: Typo(color: AppColor.greyscale80).body4_14R,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.greyscale5,
                  contentPadding: EdgeInsets.fromLTRB(16, 15.5, 198, 15.5),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.meaningfulRed),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.meaningfulRed),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: widget.hint,
                  hintStyle: Typo(color: AppColor.meaningfulRed).body4_14R,
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
              height: 4,
            ),
            Text(
              widget.text,
              style: Typo(color: AppColor.meaningfulRed).body5_12R,
            ),
          ],
        ),
      ),
    );
  }
}
