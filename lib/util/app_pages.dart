import 'package:get/get.dart';
import 'package:sface/util/app_routes.dart';

import 'package:sface/view/pages/change_pawword_page.dart';
import 'package:sface/view/pages/create_profile_page.dart';
import 'package:sface/view/pages/findpwpage.dart';
import 'package:sface/view/pages/home_page.dart';
import 'package:sface/view/pages/login_page.dart';
import 'package:sface/view/pages/signup_page.dart';
import 'package:sface/view/pages/splash_page.dart';
import 'package:sface/view/pages/test_page/main_route.dart';
import 'package:sface/view/pages/test_page/profiletest.dart';
import 'package:sface/view/pages/test_page/test_signup_page.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.changepw, page: () => const ChangePasswordPage()),
    GetPage(name: AppRoutes.findpw, page: () => const FindPasswordPage()),
    GetPage(name: AppRoutes.home, page: () => const HomePage()),
    GetPage(name: AppRoutes.login, page: () => const LoginPage()),
    GetPage(name: AppRoutes.signup, page: () => SignUpPage()),
    GetPage(name: AppRoutes.splash, page: () => SplashPage()),
    GetPage(name: AppRoutes.createProfile, page: () => ProfileTest()),
    GetPage(name: AppRoutes.testSignup, page: () => TestSignupPage()),
    GetPage(name: AppRoutes.mainRoute, page: () => MainRoute()),
    GetPage(name: AppRoutes.createProfile2, page: () => CreateProfilePage()),
  ];
}
