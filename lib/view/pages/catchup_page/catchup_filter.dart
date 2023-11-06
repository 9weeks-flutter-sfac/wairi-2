// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, avoid_unnecessary_containers
// ignore_for_file: camel_case_types
// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/catchup.dart';

class catchup_filter extends StatelessWidget {
  const catchup_filter({Key? key}) : super(key: key);

  static const String _title = 'Test AlertDialog';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyAlertDialog(),
      ),
    );
  }
}

class MyAlertDialog extends StatefulWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  _MyAlertDialogState createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            ListTile(
                // Text(
                //   '완료 : ${isCompleted == true ? 'True' : 'False'}',
                //   style: TextStyle(fontSize: 30),
                // ),
                subtitle: Container(
                    child: ListView(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        children: [
                      Container(
                        color: Color.fromARGB(255, 235, 235, 235),
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(16),
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "내용 검색하기",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                    icon: Icon(Icons.search),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8)),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.keyboard_arrow_left),
                              SizedBox(
                                width: 200,
                              ),
                              Text(
                                '캐치업!',
                                style:
                                    Typo(color: AppColor.greyscale80).body2_18B,
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(8)),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.all(8)),
                              SvgPicture.asset(
                                  'assets/icons/Icon_50/Property 1=Flutter.svg'),
                              Padding(padding: EdgeInsets.all(16)),
                              SvgPicture.asset(
                                  'assets/icons/Icon_50/Property 1=Python.svg'),
                              Padding(padding: EdgeInsets.all(16)),
                              SvgPicture.asset(
                                  'assets/icons/Icon_50/Property 1=Js.svg'),
                              Padding(padding: EdgeInsets.all(16)),
                              SvgPicture.asset(
                                  'assets/icons/Icon_50/Property 1=React.svg'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/Icon_30/Filter.svg'),
                              Padding(padding: EdgeInsets.all(4)),
                              Text(
                                '날짜순',
                                style:
                                    Typo(color: AppColor.primary80).body5_12M,
                              ),
                              Padding(padding: EdgeInsets.all(8)),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(8)),
                      SingleChildScrollView(
                        child: Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Catchup(
                                    avatar: 'assets/avatar/testavatar.svg',
                                    content: 'test',
                                    nickname: 'test',
                                    date: 'test',
                                  ),
                                ),
                                Container(
                                  child: Catchup(
                                    avatar: 'assets/avatar/testavatar.svg',
                                    content: 'test',
                                    nickname: 'test',
                                    date: 'test',
                                  ),
                                ),
                                Container(
                                  child: Catchup(
                                    avatar: 'assets/avatar/testavatar.svg',
                                    content: 'test',
                                    nickname: 'test',
                                    date: 'test',
                                  ),
                                ),
                                Container(
                                  child: Catchup(
                                    avatar: 'assets/avatar/testavatar.svg',
                                    content: 'test',
                                    nickname: 'test',
                                    date: 'test',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ])),
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Row(
                        children: [
                          Text(
                            '필터',
                            style: Typo(color: AppColor.greyscale80).body2_18B,
                          ),
                          Spacer(),
                          SvgPicture.asset('assets/icons/Icon_20/Delete.svg'),
                        ],
                      ),
                      content: Container(
                        width: 242,
                        height: 260,
                        child: Column(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '날짜',
                                        style: Typo(color: AppColor.greyscale80)
                                            .body4_14M,
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.all(4)),
                                  Container(
                                    child: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            '전체',
                                            style: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                AppColor.greyscale5,
                                            textStyle: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            '오름차순',
                                            style: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                AppColor.greyscale5,
                                            textStyle: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            '내림차순',
                                            style: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                AppColor.greyscale5,
                                            textStyle: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(16)),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '이름',
                                        style: Typo(color: AppColor.greyscale80)
                                            .body4_14M,
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.all(4)),
                                  Container(
                                    child: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            '전체',
                                            style: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                AppColor.greyscale5,
                                            textStyle: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            '오름차순',
                                            style: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                AppColor.greyscale5,
                                            textStyle: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            '내림차순',
                                            style: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                AppColor.greyscale5,
                                            textStyle: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(16)),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '좋아요',
                                        style: Typo(color: AppColor.greyscale80)
                                            .body4_14M,
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.all(4)),
                                  Container(
                                    child: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            '많은순',
                                            style: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                AppColor.greyscale5,
                                            textStyle: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            '적은순',
                                            style: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                AppColor.greyscale5,
                                            textStyle: Typo(
                                                    color: AppColor.greyscale60)
                                                .body5_12R,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6,
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
                      actions: <Widget>[
                        Center(
                          child: Container(
                            width: 165,
                            height: 32,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OutlinedButton(
                                  onPressed: () {},
                                  child: Text('초기화'),
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: AppColor.primary5,
                                    textStyle: Typo(color: AppColor.primary80)
                                        .body5_12R,
                                    side: BorderSide(
                                      color: AppColor.primary80,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('확인'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColor.primary80,
                                    textStyle: Typo(color: AppColor.greyscale0)
                                        .body5_12R,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
