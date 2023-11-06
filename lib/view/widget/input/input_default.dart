import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class InputDefault extends StatefulWidget {
  final double boxWidth;
  final String hint;

  InputDefault({
    Key? key,
    required this.hint,
    required this.boxWidth,
    required TextEditingController controller,
  }) : super(key: key);

  @override
  _InputDefaultState createState() => _InputDefaultState();
}

class _InputDefaultState extends State<InputDefault> {
  bool obscureText = false; // 이 부분을 추가

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: widget.boxWidth,
        height: 48,
        child: ClipRRect(
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
      ),
    );
  }
}
