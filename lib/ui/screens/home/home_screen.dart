import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/screens/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:islami_pojo/ui/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_pojo/ui/screens/home/tabs/radio_tab/radio_tab.dart';
import 'package:islami_pojo/ui/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami_pojo/ui/screens/home/tabs/times_tab/times_tab.dart';
import 'package:islami_pojo/ui/widgets/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  static const String tag = "home-screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/${getBackgroundImageName()}.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNav(
          callBack: (index) {
            currentIndex = index;
            setState(() {});
          },
        ),
         body: Column(
          children: [
            //Image.asset("assets/images/header2.png"),
            Expanded(child: tabs[currentIndex]),
          ],
        ),
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    TimesTab(),
  ];

  String getBackgroundImageName() {
    switch (currentIndex) {
      case 0:
        return 'homeBg';
      case 1:
        return 'hadethBg';
      case 2:
        return 'sebhaBg';
      case 3:
        return 'radioBg';
      default:
        return 'homeBg';
    }
  }
}
