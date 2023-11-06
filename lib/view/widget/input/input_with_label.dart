import 'package:flutter/material.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputWithLabel extends StatefulWidget {
  final double boxWidth;
  final String hint;
  final String title;
  final ValueChanged<String>? onChanged;
  final TextEditingController controller; // Add this line

  const InputWithLabel({
    Key? key,
    required this.hint,
    required this.title,
    this.onChanged,
    required this.boxWidth,
    required this.controller,
  }) : super(key: key);

  @override
  _InputWithLabelState createState() => _InputWithLabelState();
}

class _InputWithLabelState extends State<InputWithLabel> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: widget.boxWidth,
        height: 74,
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
                controller: widget.controller, // Add this line
                obscureText: obscureText,
                style: Typo(color: AppColor.greyscale80).body4_14R,
                onChanged: widget.onChanged,
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
                      icon: SvgPicture.asset(
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
          ],
        ),
      ),
    );
  }
}
