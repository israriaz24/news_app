import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../constants/colors.dart';
import '../../../utils/style/text_style.dart';
import '../../authentication/view/Login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: AnimatedSplashScreen(
              centered: true,
              splash: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: CAppColors.primaryDark,
                    child: Icon(
                      Icons.ac_unit_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'News App',
                    style: heading2Style(CAppColors.text2),
                  ),
                ],
              ),
              splashIconSize: double.maxFinite,
              nextScreen: const LoginScreen(),
              backgroundColor: Colors.white,
              duration: 3000,
              pageTransitionType: PageTransitionType.leftToRightWithFade,
              animationDuration: const Duration(seconds: 1),
            ),
          )
        ],
      ),
    );
  }
}
