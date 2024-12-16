import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/cache/cache_helper.dart';
import 'package:islami_pojo/ui/screens/home/home_screen.dart';
import 'package:islami_pojo/ui/screens/home/tabs/quran_tab/sura_details.dart';
import 'package:islami_pojo/ui/screens/introduction/intro_screen.dart';
import 'package:islami_pojo/ui/screens/splash_screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
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
        SplashScreen.tag: (context) => const SplashScreen(),
        IntroScreen.tag: (context) => const IntroScreen(),
        HomeScreen.tag: (context) => const HomeScreen(),
        SuraDetails.tag: (context) => const SuraDetails(),
      },
    );
  }
}
