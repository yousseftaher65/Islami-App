import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/screens/home/home_screen.dart';
import 'package:islami_pojo/ui/screens/introduction/intro_screen.dart';
import 'package:islami_pojo/ui/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Janna LT'),
      initialRoute: SplashScreen.tag,
      routes: {
        SplashScreen.tag : (context)=> SplashScreen(),
        IntroScreen.tag : (context)=> IntroScreen(),
        HomeScreen.tag : (context)=> HomeScreen(),
      },
    );
  }
}