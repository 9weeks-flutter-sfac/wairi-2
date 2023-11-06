import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sface/util/typo.dart';
import 'package:sface/view/pages/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static const String route = '/splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/splash_image.png'),
              SizedBox(
                height: 150,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.95, 40),
                ),
                onPressed: () {
                  Get.to(() => LoginPage());
                },
                child: Text(
                  '시작하기',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
