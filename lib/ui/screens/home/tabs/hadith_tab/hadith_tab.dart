import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/screens/home/tabs/hadith_tab/hadith_container.dart';

class HadithTab extends StatelessWidget {
  const  HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/onBoarding_header.png'),
          const HadithContainer(),
        ],
      ),
    );
  }
}
