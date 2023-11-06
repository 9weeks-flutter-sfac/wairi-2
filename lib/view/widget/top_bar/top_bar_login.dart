import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopBarLogin extends StatelessWidget implements PreferredSizeWidget {
  const TopBarLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        leadingWidth: 100,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          child: SvgPicture.asset(
            'assets/icons/Logo-notext.svg',
            width: 63,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
