import 'package:dealsdray/Homepage.dart';
import 'package:dealsdray/bottom_navigator.dart';
import 'package:dealsdray/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Column(
      children: [
        Image.asset("assest/mainphoto.png", height: 150, width: 200),


      ],
    ),
      backgroundColor: Colors.white,
      nextScreen:  Loginpage(),
      splashIconSize: 150,
      duration: 2000,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.bottomToTop,


    );
  }
}
