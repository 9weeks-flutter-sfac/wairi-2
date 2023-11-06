import 'package:flutter/material.dart';
import 'package:sface/controller/catchupfile_controller.dart';
import 'package:sface/controller/mogak_controller.dart';
import 'package:sface/controller/talk_controller.dart';
import 'package:sface/model/mogak_top_model.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/widget/cards/card_mogakko.dart';
import 'package:sface/view/widget/cards/card_talk.dart';
import 'package:sface/view/widget/cards/catchup.dart';
import 'package:sface/view/widget/cards/rank.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  Future getData() async {
    var talk = await Get.find<TalkController>().getTopTalk();
    var catchup = await Get.find<CatchupFileController>().getCatchUp();
    var mogak = await Get.find<MogakController>().getTopMogak();

    var dataList = [
      talk,
      catchup,
      mogak,
    ];
    return dataList;
  }

  static const String route = '/homepage';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData == false) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Text('Error');
          } else {
            print('FutureBuilder 실행');
            List<MogakTopModel> mogak = snapshot.data[2];
            return ListView(
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Text(
                                '🔥핫한 톡',
                                style:
                                    Typo(color: AppColor.greyscale80).body2_18B,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.chevron_right),
                            ),
                          ],
                        ),
                        for (var i = 0; i < 2; i++)
                          CardTalk(
                            avatar: 'assets/avatar/testavatar.svg',
                            content: snapshot.data[0][i].content,
                            nickname: snapshot.data[0][i].author.nickname,
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Text(
                                '🎯핫한 캐치업',
                                style:
                                    Typo(color: AppColor.greyscale80).body2_18B,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.chevron_right),
                            ),
                          ],
                        ),
                        for (var i = 0; i < 3; i++)
                          Catchup(
                            avatar: 'assets/avatar/testavatar.svg',
                            content: snapshot.data[1][i].content,
                            nickname: snapshot.data[1][i].author.nickname,
                            date: snapshot.data[1][i].updatedAt?.split('T')[0],
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Text(
                                '📨핫한 모각코',
                                style:
                                    Typo(color: AppColor.greyscale80).body2_18B,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.chevron_right),
                            ),
                          ],
                        ),
                        CardMogakko(
                            avatar: 'assets/avatar/testavatar.svg',
                            nickname: mogak[0].author.nickname,
                            title: mogak[0].title,
                            content: mogak[0].content,
                            date: mogak[0].updatedAt.split('T')[0],
                            position: mogak[0].author.position,
                            currentMember:
                                mogak[0].appliedProfiles.length.toString(),
                            maxMember: mogak[0].maxMember.toString()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Text(
                                '💻이달의 스페이서',
                                style:
                                    Typo(color: AppColor.greyscale80).body2_18B,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.chevron_right),
                            ),
                          ],
                        ),
                     
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
        });
  }
}
