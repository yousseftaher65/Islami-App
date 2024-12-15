import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/cache/cache_helper.dart';
import 'package:islami_pojo/ui/screens/home/home_screen.dart';
import 'package:islami_pojo/ui/screens/introduction/intro_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String tag = "/";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
    final eligibility = CacheHelper.getEligibility() ?? false;
      Navigator.pushReplacementNamed(
        context,
        eligibility ? HomeScreen.tag : IntroScreen.tag,
      );
    });
    return SafeArea(
      top: false,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/splashBg.png'),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                top: 60,
                child: Image.asset('assets/images/header.png'),
              ),
              Positioned(
                top: 0,
                right: 8,
                child: Image.asset('assets/images/Glow.png'),
              ),
              Positioned(
                top: 240,
                left: 0,
                child: Image.asset('assets/images/shape2.png'),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/mainLogo.png'),
                    Image.asset('assets/images/Islami.png')
                  ],
                ),
              ),
              Positioned(
                right: 0,
                bottom: 100,
                child: Image.asset('assets/images/shape1.png'),
              ),
              Positioned(
                bottom: 30,
                child: Image.asset('assets/images/routegold.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
