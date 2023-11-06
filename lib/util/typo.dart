// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Typo {
  Color color;
  Typo({
    required this.color,
  });

  TextStyle get h1_40 =>
      TextStyle(fontSize: 40, height: 1.2, letterSpacing: -0.03, color: color);
  TextStyle get h1_32 =>
      TextStyle(fontSize: 32, height: 1.2, letterSpacing: -0.03, color: color);
  TextStyle get h2_28 =>
      TextStyle(fontSize: 28, height: 1.2, letterSpacing: -0.03, color: color);
  TextStyle get h3_24 =>
      TextStyle(fontSize: 24, height: 1.2, letterSpacing: -0.03, color: color);
  TextStyle get h4_20 =>
      TextStyle(fontSize: 20, height: 1.2, letterSpacing: -0.03, color: color);

  TextStyle get body1_20B => TextStyle(
      fontSize: 20,
      height: 1.2,
      letterSpacing: -0.03,
      fontWeight: FontWeight.w700,
      color: color);
  TextStyle get body1_20M => TextStyle(
      fontSize: 20,
      height: 1.2,
      letterSpacing: -0.03,
      fontWeight: FontWeight.w500,
      color: color);
  TextStyle get body1_20R => TextStyle(
      fontSize: 20,
      height: 1.2,
      letterSpacing: -0.03,
      fontWeight: FontWeight.w400,
      color: color);

  TextStyle get body2_18B => TextStyle(
      fontSize: 18,
      height: 1.2,
      letterSpacing: -0.03,
      fontWeight: FontWeight.w700,
      color: color);
  TextStyle get body2_18M => TextStyle(
      fontSize: 18,
      height: 1.2,
      letterSpacing: -0.03,
      fontWeight: FontWeight.w500,
      color: color);
  TextStyle get body2_18R => TextStyle(
      fontSize: 18,
      height: 1.2,
      letterSpacing: -0.03,
      fontWeight: FontWeight.w400,
      color: color);

  TextStyle get body3_16B => TextStyle(
      fontSize: 16,
      height: 1.2,
      letterSpacing: -0.03,
      fontWeight: FontWeight.w700,
      color: color);
  TextStyle get body3_16M => TextStyle(
      fontSize: 16,
      height: 1.2,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w500,
      color: color);
  TextStyle get body3_16R => TextStyle(
      fontSize: 16,
      height: 1.2,
      letterSpacing: -0.03,
      fontWeight: FontWeight.w400,
      color: color);

  TextStyle get body4_14B => TextStyle(
      fontSize: 14,
      height: 1.2,
      letterSpacing: -0.03,
      fontWeight: FontWeight.w700,
      color: color);
  TextStyle get body4_14M => TextStyle(
      fontSize: 14,
      height: 1.2,
      letterSpacing: -0.03,
      fontWeight: FontWeight.w500,
      color: color);
  TextStyle get body4_14R => TextStyle(
      fontSize: 14,
      height: 1.2,
      letterSpacing: -0.03,
      fontWeight: FontWeight.w400,
      color: color);

  TextStyle get body5_12B => TextStyle(
      fontSize: 12,
      height: 1.2,
      letterSpacing: -0.03,
      fontWeight: FontWeight.w700,
      color: color);
  TextStyle get body5_12M => TextStyle(
      fontSize: 12,
      height: 1.2,
      letterSpacing: -0.03,
      fontWeight: FontWeight.w500,
      color: color);
  TextStyle get body5_12R => TextStyle(
      fontSize: 12,
      height: 1.2,
      letterSpacing: -0.03,
      fontWeight: FontWeight.w400,
      color: color);
}
