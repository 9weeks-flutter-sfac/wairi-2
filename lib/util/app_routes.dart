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

class AppRoutes {
  static const String splash = SplashPage.route;
  static const String signup = SignUpPage.route;
  static const String login = LoginPage.route;
  static const String home = HomePage.route;
  static const String findpw = FindPasswordPage.route;
  static const String changepw = ChangePasswordPage.route;

  static const String createProfile = ProfileTest.route;
  static const String createProfile2 = CreateProfilePage.route;

  static const String testSignup = TestSignupPage.route;
  static const String mainRoute = MainRoute.route;
}
