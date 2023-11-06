import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sface/model/profile_model.dart';
import 'package:sface/util/app_routes.dart';

class AuthController extends GetxController {
  final Dio dio = Dio();
  RxBool pageRefresh = RxBool(false);

  var emailController = TextEditingController();
  var pwController = TextEditingController();

  Rxn<String> token = Rxn<String>();
  final Rxn<Profile> myProfile = Rxn();

  var testToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImNsbzhhcXE5ejAwMDFsYTA4ZGcydjAwdWgiLCJlbWFpbCI6Imx1bmFyYmFsYW5jZTFAZ21haWwuY29tIiwidmVyaWZpZWRFbWFpbCI6dHJ1ZSwidmVyaWZpZWRQaG9uZSI6ZmFsc2UsIm5hbWUiOiLthYzsiqTtirjslYTsnbTrlJQxIiwicHJvZmlsZSI6eyJpZCI6ImNsbzh1bWowazAwMDFreTA4djVvaXBiM3QiLCJuaWNrbmFtZSI6InRlc3QxIiwiYXZhdGFyIjpudWxsLCJiaW8iOiJ0ZXN0MSIsInBvc2l0aW9uIjoiREVWRUxPUEVSIiwicm9sZSI6Ik5FV0JJRSIsImJhZGdlIjpudWxsfSwiaWF0IjoxNjk4NDI1MzkzfQ.iBOqMgPUYH1ZPOm3l88L7haE7pBBdcsTYDE5gnFtDQo';

  @override
  void onInit() {
    super.onInit();
    ever(token,
        _handleAuthChanged); // ever는 첫 번째 파라미터로 Rx 데이터를 받고, 그것을 콜백 함수에 넘겨주는데, 넘겨주는 값은 Rx 데이터의 value 값이다.
  }

  _handleAuthChanged(String? token) async {
    var whatToken = await getMyProfile(token);
    if (whatToken["data"] != null) {
      // 2차 로그인. 프로필 생성 확인
      print(whatToken);
      myProfile.value = Profile.fromMap(whatToken["data"]);
      print(myProfile.value!.id);
      Get.offAndToNamed(AppRoutes.mainRoute);
    } else {
      print('프로필 토큰 없음');
      Get.offAndToNamed(AppRoutes.createProfile2);
    }
  }

  login() async {
    var encodedPassword = base64Encode(utf8.encode(pwController.text));
    try {
      var res = await dio.post(
        'https://dev.sniperfactory.com/api/auth/login',
        data: {
          'email': emailController.text,
          'password': encodedPassword,
        },
      );
      if (res.data["data"] != null) {
        // 1차 로그인. 회원가입은 확인. 프로필 생성은 확인하지 않음.
        emailController.text = '';
        pwController.text = '';
        token.value = res.data["data"];
      } else {
        print(res.data);
      }
    } catch (e) {
      print(e);
    }
  }

  signup(String email, String password, String phone, String name) async {
    try {
      var res = await dio.post(
        'https://dev.sniperfactory.com/api/auth/signup',
        data: {
          'email': email,
          'password': password,
          'phone': phone,
          'name': name,
        },
      );
      print(res.data);
      if (res.data["data"] != null) {
        Get.offAndToNamed(AppRoutes.login);
      }
    } catch (e) {
      print(e);
    }
  }

  withdraw() async {
    try {
      var res = await dio.post(
          'https://dev.sniperfactory.com/api/auth/withdraw',
          options: Options(headers: {'Authorization': token}));
      print(res.data);
    } catch (e) {
      print(e);
    }
  }

  forgotPassword(String email) async {
    try {
      var res = await dio.post(
        'https://dev.sniperfactory.com/api/auth/forgot-password',
        data: {'email': email},
        options: Options(
          headers: {'Authorization': token},
        ),
      );
      print(res.data);
    } catch (e) {
      print(e);
    }
  }

  refreshToken() async {
    try {
      var res = await dio.post(
        'https://dev.sniperfactory.com/api/auth/refresh-token',
        options: Options(
          headers: {'Authorization': token},
        ),
      );
      print(res.data);
      token = res.data["data"];
    } catch (e) {
      print(e);
    }
  }

  verifyEmail() async {
    try {
      var res = await dio.post(
        'https://dev.sniperfactory.com/api/auth/verify-email',
        options: Options(
          headers: {'Authorization': token},
        ),
      );
      print(res.data);
    } catch (e) {
      print(e);
    }
  }

  createProfile(
    String nickname,
    String bio,
    String position,
  ) async {
    try {
      var res = await dio.post(
        'https://dev.sniperfactory.com/api/me/profile',
        data: {
          "nickname": nickname,
          "bio": bio,
          "position":
              position, // position 값은 무조건 DEVELOPER, HEADHUNTER, DESIGNER 중 하나
        },
        options: Options(
          headers: {'Authorization': token},
        ),
      );
      if (res.data["status"] == 'success') {
        token.value = res.data["data"];
      }
    } catch (e) {}
  }

  getMyProfile(token) async {
    try {
      var res = await dio.get(
        'https://dev.sniperfactory.com/api/me/profile',
        options: Options(
          headers: {"Authorization": token},
        ),
      );
      // myProfile.value = Profile.fromMap(res.data);
      return res.data;
    } catch (e) {}
  }

  getSingleMogak() async {
    try {
      var res = await dio.get(
        'https://dev.sniperfactory.com/api/mogak/clo58p1b80000mdccptj78cyy',
        options: Options(
          headers: {"Authorization": testToken},
        ),
      );
      print(res);
    } catch (e) {}
  }

  getEntireMogak() async {
    try {
      var res = await dio.get('https://dev.sniperfactory.com/api/mogak');
      print(res.data);
    } catch (e) {}
  }
}
