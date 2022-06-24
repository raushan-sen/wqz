// import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';
// import 'package:wqz/screens/screens.dart';
import 'package:wqz/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: dominantcolor,
      // body: AnimatedSplash(
      //         imagePath: 'assets/logo_icon.png',
      //         home: const MyLogin(),
      //         duration: 2500,
      //         type: AnimatedSplashType.StaticDuration,
      //       ),
    );
  }
}
