import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class BottomMenuBar extends StatelessWidget {
  const BottomMenuBar(
      {super.key, required this.currentIndex, required this.onTap});

  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 76),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: AppColor.greyscale10, width: 1),
        ),
      ),
      child: BottomNavigationBar(
        selectedLabelStyle: Typo(color: AppColor.primary80).body5_12R,
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
              icon: InkWell(
                child: SvgPicture.asset(
                  'assets/icons/Icon_30/Home.svg',
                  colorFilter: currentIndex == 0
                      ? ColorFilter.mode(AppColor.primary80, BlendMode.srcIn)
                      : ColorFilter.mode(AppColor.greyscale40, BlendMode.srcIn),
                ),
              ),
              label: '홈'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/Icon_30/Community.svg',
                colorFilter: currentIndex == 1
                    ? ColorFilter.mode(AppColor.primary80, BlendMode.srcIn)
                    : ColorFilter.mode(AppColor.greyscale40, BlendMode.srcIn),
              ),
              label: '톡!'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/Icon_30/Work.svg',
                colorFilter: currentIndex == 2
                    ? ColorFilter.mode(AppColor.primary80, BlendMode.srcIn)
                    : ColorFilter.mode(AppColor.greyscale40, BlendMode.srcIn),
              ),
              label: '캐치업!'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/Icon_30/Lounge.svg',
                colorFilter: currentIndex == 3
                    ? ColorFilter.mode(AppColor.primary80, BlendMode.srcIn)
                    : ColorFilter.mode(AppColor.greyscale40, BlendMode.srcIn),
              ),
              label: '모각코!'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/Icon_50/woman-a.svg',
                colorFilter: currentIndex == 4
                    ? null
                    : ColorFilter.matrix(<double>[
                        0.2126,
                        0.7152,
                        0.0722,
                        0,
                        0,
                        0.2126,
                        0.7152,
                        0.0722,
                        0,
                        0,
                        0.2126,
                        0.7152,
                        0.0722,
                        0,
                        0,
                        0,
                        0,
                        0,
                        1,
                        0,
                      ]),
                height: 30,
              ),
              label: '마이페이지'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
