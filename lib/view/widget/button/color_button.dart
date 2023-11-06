import 'package:flutter/material.dart';
import 'package:sface/util/color.dart';

class ColorButton extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final VoidCallback onPressed;

  const ColorButton({
    required this.color,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        side: BorderSide(
          color: isSelected ? AppColor.primary80 : Colors.transparent,
          width: 3.0,
        ),
        primary: color,
      ),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 28,
          maxHeight: 28,
        ),
      ),
    );
  }
}
