import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/controller/auth_controller.dart';
import 'package:sface/model/catchup_model.dart';

class CatchupFileController extends GetxController {
  Dio dio = Dio();
  RxInt index = RxInt(0);

  // List<CatchUpModel>? catchupList;
  Rxn<List<CatchUpModel>> catchupListRx = Rxn();

  final PageController catchupPageController = PageController(initialPage: 0);

  String? token;

  getCatchUp() async {
    try {
      var res =
          await dio.get('https://dev.sniperfactory.com/api/catchup?filter=');
      List resList = res.data["data"];
      catchupListRx.value =
          resList.map((e) => CatchUpModel.fromMap(e)).toList();
      // catchupList = resList.map((e) => CatchUpModel.fromMap(e)).toList();
      // List<CatchUpModel>? newList = List.from(catchupList!);
      // // catchupListRx.value = newList;
    } catch (e) {
      print(e);
    }
    return catchupListRx.value;
  }

  catchupFilter(String select) {
    List<CatchUpModel>? newList = List.from(catchupListRx
        .value!); // 이렇게 넣는 이유는 바로 catchupList를 넣으면, 함수가 실행될 때마다 newList가 참조하는 곳이 catchupList와 동일해져, cathcupList에 넣을 때 여전히 이전 리스트를 가리키게 되기 때문에 넣었다.

    if (select == "desName") {
      newList.sort((a, b) => b.title![0].compareTo(a.title![0]));
    } else if (select == "ascName") {
      newList.sort((a, b) => a.title![0].compareTo(b.title![0]));
    } else if (select == "ascDate") {
      newList.sort((a, b) =>
          DateTime.parse(a.updatedAt!).compareTo(DateTime.parse(b.updatedAt!)));
    } else if (select == "desDate") {
      newList.sort((a, b) =>
          DateTime.parse(b.updatedAt!).compareTo(DateTime.parse(a.updatedAt!)));
    }
    catchupListRx.value = newList;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    token = Get.find<AuthController>().token.value;
    ever(index, (value) => catchupPageController.jumpToPage(0));
  }
}
