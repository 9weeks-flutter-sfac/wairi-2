// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, avoid_unnecessary_containers
// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/catchup.dart';

class catchup_profile extends StatelessWidget {
  const catchup_profile({Key? key}) : super(key: key);

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
                            '프로필',
                            style: Typo(color: AppColor.greyscale80).body2_18B,
                          ),
                          Spacer(),
                          SvgPicture.asset('assets/icons/Icon_20/Delete.svg'),
                        ],
                      ),
                      content: Container(
                        width: 163,
                        height: 73,
                        child: Row(
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
                            Text(
                              '우디',
                              style:
                                  Typo(color: AppColor.greyscale80).body4_14B,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                '수료생',
                                style:
                                    Typo(color: AppColor.greyscale60).body5_12R,
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: AppColor.greyscale5,
                                textStyle:
                                    Typo(color: AppColor.greyscale60).body5_12R,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // actions: <Widget>[

                      //    Center(
                      //      child: Container(
                      //       width: 165,
                      //       height: 32,
                      //        child: ElevatedButton(
                      //          onPressed: () => Navigator.of(context).pop(),
                      //         child: const Text('닫기'),
                      //         style: ElevatedButton.styleFrom(
                      //        backgroundColor: AppColor.primary80,
                      //        textStyle: Typo(color: AppColor.greyscale0).body5_12R,
                      //                              ),

                      //                              ),
                      //      ),
                      //    )
                      // ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
