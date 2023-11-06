import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class SignupField extends StatelessWidget {
  const SignupField(
      {super.key,
      this.controller,
      required this.hideInput,
      required this.hintText,
      required this.isPw,
      this.labelText,
      this.icon,
      this.hintStyle});

  final TextEditingController? controller;
  final bool hideInput;
  final String hintText;
  final bool isPw;
  final String? labelText;
  final Widget? icon;
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 48,
      decoration: BoxDecoration(
        color: AppColor.greyscale5,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: Typo(color: AppColor.greyscale80).body4_14R,
        obscureText: hideInput == true ? true : false,
        obscuringCharacter: "*",
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: icon,
          prefixIconConstraints: BoxConstraints(
            maxHeight: 18,
          ),
          labelText: labelText,
          hintText: hintText,
          hintStyle: hintStyle,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          suffixIcon: isPw == true
              ? Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SvgPicture.asset(
                    'assets/icons/Icon_20/_See.svg',
                  ),
                )
              : null,
          suffixIconConstraints: BoxConstraints(maxWidth: 28),
        ),
      ),
    );
  }
}
