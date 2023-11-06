import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/controller/auth_controller.dart';
import 'package:sface/model/profile_model.dart';
import 'package:sface/model/talk_model.dart';
import 'package:sface/model/talk_single_model.dart';
import 'package:sface/model/talk_top_model.dart';

class TalkController extends GetxController {
  final dio = Dio();

  RxInt dummy = RxInt(1);

  Rxn<List<Talk>> talkListRx = Rxn();
  Rxn<List<TalkTop>> talkListTopRx = Rxn();
  Rxn<TalkSingleModel> talkSingleRx = Rxn();

  List<Talk>? talkListValue;
  List<TalkTop>? talkTopList;
  String? token;
  Profile? profile;
  Rxn<List> talkList = Rxn();

  RxString selectedTalk = RxString('');
  RxString talkId = RxString('');

  final PageController talkPageController = PageController(initialPage: 0);
  final TextEditingController talkEditingController = TextEditingController();
  final TextEditingController talkDetailController = TextEditingController();

  RxString talkData = ''.obs;

  void onChangeTalk(String value) {
    talkData.value = value;
  }

  Future getTalk() async {
    var res = await dio.get('https://dev.sniperfactory.com/api/talk');
    List resList = res.data["data"];
    // talkListValue = resList.map((e) => Talk.fromMap(e)).toList();
    // List<Talk>? newTalkList = List.from(talkListValue!);
    // talkListRx.value = newTalkList;
    // print(talkListRx.value);
    talkListRx.value = resList.map((e) => Talk.fromMap(e)).toList();
    print(talkListRx.value);

    return talkListRx.value;
  }

  getMyTalk() async {
    var res = await dio.get(
      'https://dev.sniperfactory.com/api/me/talk',
      options: Options(
        headers: {'Authorization': token},
      ),
    );
    print(res.data);
  }

  createTalk(String? select, {String? id, String? content}) async {
    try {
      var res = await dio.post('https://dev.sniperfactory.com/api/talk',
          options: Options(headers: {"Authorization": token}),
          data: {
            'mogakId': select == "mogak" ? id : null,
            'catchUpId': select == "catchup" ? id : null,
            'parentId': select == "talk" ? id : null,
            "content": content,
          });
      print(res.data);
      getTalk();
    } catch (e) {
      print(e);
    }
  } // 완료 후 getTalk()불러오기

  deleteMyTalk(String id) async {
    try {
      var res = await dio.delete(
        'https://dev.sniperfactory.com/api/talk/$id',
        options: Options(
          headers: {'Authorization': token},
        ),
      );
      print(res.data);
    } catch (e) {
      print(e);
    }
  }

  Future getTopTalk() async {
    try {
      var res = await dio.get('https://dev.sniperfactory.com/api/top/talk');
      List resList = res.data["data"];
      talkListTopRx.value = resList.map((e) => TalkTop.fromMap(e)).toList();

      return talkListTopRx.value;
    } catch (e) {
      print(e);
    }
  }

  Future getSingleTalk(String talkId) async {
    try {
      var res = await dio.get('https://dev.sniperfactory.com/api/talk/$talkId');
      if (res.statusCode == 200) {
        talkSingleRx.value = TalkSingleModel.fromMap(res.data["data"]);
        return res.data;
      } else {
        print('에러?');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void onInit() {
    super.onInit();
    token = Get.find<AuthController>().token.value;
    profile = Get.find<AuthController>().myProfile.value;
  }
}
