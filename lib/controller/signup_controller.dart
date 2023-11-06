import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sface/controller/auth_controller.dart';

class SignupController extends GetxController {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var pwController = TextEditingController();
  var phoneController = TextEditingController();

  signup() {
    Get.find<AuthController>().signup(emailController.text, pwController.text,
        phoneController.text, nameController.text);
  }
}
