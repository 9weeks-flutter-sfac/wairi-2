import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AvatarStack extends StatelessWidget {
  const AvatarStack(
      {super.key,
      required this.face,
      required this.emotion,
      required this.hair,
      required this.item});

  final String face;
  final String emotion;
  final String hair;
  final String item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(face),
        SvgPicture.asset(emotion),
        SvgPicture.asset(hair),
        SvgPicture.asset(item),
      ],
    );
  }
}
