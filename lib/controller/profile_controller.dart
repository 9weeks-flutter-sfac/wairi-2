import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/controller/auth_controller.dart';

class ProfileController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Dio dio = Dio();
  var nicknameController = TextEditingController();
  var bioController = TextEditingController();
  var positionController = TextEditingController();

  createProfile() {
    Get.find<AuthController>().createProfile(
        nicknameController.text, bioController.text, positionController.text);
  }
}
