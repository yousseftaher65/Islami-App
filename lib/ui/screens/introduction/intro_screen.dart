import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_pojo/ui/cache/cache_helper.dart';
import 'package:islami_pojo/ui/screens/home/home_screen.dart';
import 'package:islami_pojo/ui/theme/style.dart';

class IntroScreen extends StatelessWidget {
  static const String tag = 'introScreen';
  const IntroScreen({super.key});

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0, color: Style.primaryColor);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 24.0, color: Style.primaryColor),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
      fullScreen: false,
      bodyAlignment: Alignment.center,
      imageAlignment: Alignment.bottomCenter,
      imageFlex: 3,
    );

    return IntroductionScreen(
      globalHeader: Image.asset(
        'assets/images/onBoarding_header.png',
        height: 275,
      ),
      dotsFlex: 2,
      dotsDecorator: DotsDecorator(
          activeColor: Style.primaryColor,
          activeSize: const Size(16, 8),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          color: const Color(0xff707070)),
      globalBackgroundColor: Style.secondaryColor,
      showDoneButton: true,
      onDone: () async {
       await CacheHelper.saveEligibility();
        Navigator.pushReplacementNamed(context, HomeScreen.tag);
      },
      showNextButton: true,
      nextStyle: const ButtonStyle(
          overlayColor: WidgetStatePropertyAll(Colors.transparent)),
      backStyle: const ButtonStyle(
          overlayColor: WidgetStatePropertyAll(Colors.transparent)),
      doneStyle: const ButtonStyle(
          overlayColor: WidgetStatePropertyAll(Colors.transparent)),
      showBackButton: true,
      back: const Text(
        'Back',
        style: TextStyle(fontSize: 16, color: Style.primaryColor),
      ),
      done: const Text(
        'Finish',
        style: TextStyle(fontSize: 16, color: Style.primaryColor),
      ),
      next: const Text(
        'Next',
        style: TextStyle(fontSize: 16, color: Style.primaryColor),
      ),
      pages: [
        PageViewModel(
          title: "Welcome To Islmi App",
          body: "",
          image: _buildImage('onOne.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Welcome To Islmi App",
          body: "We Are Very Excited To Have You In Our Community",
          image: _buildImage('onTwo.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Reading the Quran",
          body: "Read, and your Lord is the Most Generous",
          image: _buildImage('onThree.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Bearish",
          body: "Praise the name of your Lord, the Most High",
          image: _buildImage('onFive.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Holy Quran Radio",
          body:
              "You can listen to the Holy Quran Radio through the application for free and easily",
          image: _buildImage('onFour.png'),
          decoration: pageDecoration,
        ),
      ],
    );
  }
}
