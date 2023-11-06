// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class Mypage extends StatelessWidget {
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  width: 370,
                  height: 420,
                  child: Column(
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: SvgPicture.asset(
                                  'assets/icons/Icon_Avatar.svg'),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('디자이너/1기'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColor.primary80,
                                      textStyle:
                                          Typo(color: AppColor.greyscale0)
                                              .body5_12R,
                                    ),
                                  ),
                                ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '캐서린',
                                  style: Typo(color: AppColor.greyscale80)
                                      .body4_14B,
                                ),
                                Padding(padding: EdgeInsets.all(8)),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '수료생',
                                    style: Typo(color: AppColor.greyscale60)
                                        .body5_12R,
                                  ),
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppColor.greyscale5,
                                    textStyle: Typo(color: AppColor.greyscale60)
                                        .body5_12R,
                                  ),
                                ),
                              ],
                            ),
                          ]),
                      Padding(padding: EdgeInsets.all(16)),
                      Container(
                        decoration: DottedDecoration(
                            shape: Shape.line,
                            linePosition: LinePosition.bottom),
                      ),
                      Padding(padding: EdgeInsets.all(16)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/Icon_20/laptop.svg'),
                          Text(
                            '스페이서 달성',
                            style: Typo(color: AppColor.greyscale80).body2_18B,
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(16)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 46,
                            height: 22,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                '1월',
                                style:
                                    Typo(color: AppColor.greyscale60).body5_12R,
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: AppColor.greyscale5,
                                textStyle:
                                    Typo(color: AppColor.greyscale60).body5_12R,
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(16)),
                          Container(
                            width: 46,
                            height: 22,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                '2월',
                                style:
                                    Typo(color: AppColor.greyscale60).body5_12R,
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: AppColor.greyscale5,
                                textStyle:
                                    Typo(color: AppColor.greyscale60).body5_12R,
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(16)),
                          Container(
                            width: 46,
                            height: 22,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                '3월',
                                style:
                                    Typo(color: AppColor.greyscale60).body5_12R,
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: AppColor.greyscale5,
                                textStyle:
                                    Typo(color: AppColor.greyscale60).body5_12R,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.chevron_left),
                              Padding(padding: EdgeInsets.all(32)),
                              SvgPicture.asset('assets/icons/No.svg'),
                              Padding(padding: EdgeInsets.all(18)),
                              SvgPicture.asset('assets/icons/1st.svg'),
                              Padding(padding: EdgeInsets.all(18)),
                              SvgPicture.asset('assets/icons/3rd.svg'),
                              Padding(padding: EdgeInsets.all(32)),
                              Icon(Icons.chevron_right),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    color: AppColor.greyscale0,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/Icon_20/fire.svg'),
                            Padding(padding: EdgeInsets.all(8)),
                            Text(
                              '나의 톡!',
                              style:
                                  Typo(color: AppColor.greyscale80).body2_18B,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: TextButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(),
                                child: Text(
                                  '내가 쓴 톡',
                                  style: Typo(color: AppColor.greyscale80)
                                      .body3_16M,
                                ),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Icon_20/Right.svg')
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Container(
                          decoration: DottedDecoration(
                              shape: Shape.line,
                              linePosition: LinePosition.bottom),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: TextButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(),
                                child: Text(
                                  '좋아요 한 톡',
                                  style: Typo(color: AppColor.greyscale80)
                                      .body3_16M,
                                ),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Icon_20/Right.svg')
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Container(
                          decoration: DottedDecoration(
                              shape: Shape.line,
                              linePosition: LinePosition.bottom),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: TextButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(),
                                child: Text(
                                  '내가 쓴 이어달린 톡',
                                  style: Typo(color: AppColor.greyscale80)
                                      .body3_16M,
                                ),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Icon_20/Right.svg')
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Container(
                          decoration: DottedDecoration(
                              shape: Shape.line,
                              linePosition: LinePosition.bottom),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    color: AppColor.greyscale0,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/Icon_20/dart.svg'),
                            Padding(padding: EdgeInsets.all(8)),
                            Text(
                              '나의 캐치업!',
                              style:
                                  Typo(color: AppColor.greyscale80).body2_18B,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: TextButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(),
                                child: Text(
                                  '내 캐치업',
                                  style: Typo(color: AppColor.greyscale80)
                                      .body3_16M,
                                ),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Icon_20/Right.svg')
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Container(
                          decoration: DottedDecoration(
                              shape: Shape.line,
                              linePosition: LinePosition.bottom),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: TextButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(),
                                child: Text(
                                  '좋아요 한 캐치업',
                                  style: Typo(color: AppColor.greyscale80)
                                      .body3_16M,
                                ),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Icon_20/Right.svg')
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Container(
                          decoration: DottedDecoration(
                              shape: Shape.line,
                              linePosition: LinePosition.bottom),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    color: AppColor.greyscale0,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/Icon_20/dart.svg'),
                            Padding(padding: EdgeInsets.all(8)),
                            Text(
                              '나의 모각코!',
                              style:
                                  Typo(color: AppColor.greyscale80).body2_18B,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: TextButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(),
                                child: Text(
                                  '내가 만든 그룹',
                                  style: Typo(color: AppColor.greyscale80)
                                      .body3_16M,
                                ),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Icon_20/Right.svg')
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Container(
                          decoration: DottedDecoration(
                              shape: Shape.line,
                              linePosition: LinePosition.bottom),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: TextButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(),
                                child: Text(
                                  '참여중인 그룹',
                                  style: Typo(color: AppColor.greyscale80)
                                      .body3_16M,
                                ),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Icon_20/Right.svg')
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Container(
                          decoration: DottedDecoration(
                              shape: Shape.line,
                              linePosition: LinePosition.bottom),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    color: AppColor.greyscale0,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                                'assets/icons/Icon_20/_Setting.svg'),
                            Padding(padding: EdgeInsets.all(8)),
                            Text(
                              '설정',
                              style:
                                  Typo(color: AppColor.greyscale80).body2_18B,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: TextButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(),
                                child: Text(
                                  '내 정보 수정하기',
                                  style: Typo(color: AppColor.greyscale80)
                                      .body3_16M,
                                ),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Icon_20/Right.svg')
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Container(
                          decoration: DottedDecoration(
                              shape: Shape.line,
                              linePosition: LinePosition.bottom),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: TextButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(),
                                child: Text(
                                  '비밀번호 변경',
                                  style: Typo(color: AppColor.greyscale80)
                                      .body3_16M,
                                ),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Icon_20/Right.svg')
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Container(
                          decoration: DottedDecoration(
                              shape: Shape.line,
                              linePosition: LinePosition.bottom),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: TextButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(),
                                child: Text(
                                  '로그아웃',
                                  style: Typo(color: AppColor.greyscale80)
                                      .body3_16M,
                                ),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Icon_20/Right.svg')
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Container(
                          decoration: DottedDecoration(
                              shape: Shape.line,
                              linePosition: LinePosition.bottom),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: TextButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(),
                                child: Text(
                                  '회원탈퇴',
                                  style: Typo(color: AppColor.greyscale80)
                                      .body3_16M,
                                ),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Icon_20/Right.svg')
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Container(
                          decoration: DottedDecoration(
                              shape: Shape.line,
                              linePosition: LinePosition.bottom),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
