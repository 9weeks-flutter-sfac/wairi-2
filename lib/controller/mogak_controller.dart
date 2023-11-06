import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/controller/auth_controller.dart';
import 'package:sface/controller/talk_controller.dart';
import 'package:sface/model/mogak_model.dart';
import 'package:sface/model/mogak_single_model.dart';
import 'package:sface/model/mogak_top_model.dart';

class MogakController extends GetxController {
  Dio dio = Dio();

  Rxn<List<MogakModel>> mogakListRx = Rxn();
  Rxn<List<MogakTopModel>> topMogakListRx = Rxn();
  Rxn<SingleMogakModel> singleMogakRx = Rxn();

  List<MogakModel>? mogakList;
  List<MogakTopModel>? topMogakList;

  RxInt selectedValue = RxInt(1);

  String? token = '';

  final PageController mogakPageController = PageController(initialPage: 0);

  final TextEditingController mogakGroupContentController =
      TextEditingController();
  final TextEditingController mogakGroupTitleController =
      TextEditingController();
  final TextEditingController mogakDetailController = TextEditingController();

  int maxMember = 0;
  String visibilityStatus = "OPEN"; // HIDDEN, CLOSE

  int currentIdx = 0;

  RxString mogakId = RxString('');
  RxBool hotOrAll = RxBool(false);

  Future getTopMogak() async {
    var res = await dio.get('https://dev.sniperfactory.com/api/top/mogak');
    List resList = res.data["data"];
    topMogakList = resList.map((e) => MogakTopModel.fromMap(e)).toList();
    List<MogakTopModel>? newList = List.from(topMogakList!);
    topMogakListRx.value = newList;
    return topMogakList;
  }

  Future getEntireMogak() async {
    var res = await dio.get('https://dev.sniperfactory.com/api/mogak');
    List resList = res.data["data"];
    mogakList = resList.map((e) => MogakModel.fromMap(e)).toList();
    List<MogakModel>? newList = List.from(mogakList!);
    mogakListRx.value = newList;
    return mogakList;
  }

  getSingleMogak(String mogakId) async {
    String route = 'https://dev.sniperfactory.com/api/mogak/';
    try {
      var res = await dio.get(
        route + mogakId,
        options: Options(
          headers: {'Authorization': token},
        ),
      );
      if (res.statusCode == 200) {
        singleMogakRx.value = SingleMogakModel.fromMap(res.data["data"]);
        print(singleMogakRx.value!.content);
        return res.data;
      } else {
        print('에러?');
      }
    } catch (e) {
      print(e);
    }
    throw Error();
  }

  postMogakApply() async {
    try {
      var res = await dio.post(
        'https://dev.sniperfactory.com/api/mogak/${mogakId}/apply',
        options: Options(
          headers: {'Authorization': token},
        ),
      );
      print(res.data);
    } catch (e) {
      print(e);
    }
    print('됐니?');
  }

  createMogak() async {
    try {
      var res = await dio.post(
        'https://dev.sniperfactory.com/api/mogak',
        data: {
          'content': mogakGroupContentController.text,
          'title': mogakGroupTitleController.text,
          'maxMember': selectedValue.value,
          "visiblityStatus": "OPEN"
        },
        options: Options(
          headers: {"Authorization": token},
        ),
      );

      print(res.data);
    } catch (e) {
      print(e);
    }
  }

  createMogakTalk() {
    Get.find<TalkController>().createTalk("mogak",
        id: mogakId.value, content: mogakDetailController.text);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    token = Get.find<AuthController>().token.value;
  }
}
