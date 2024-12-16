import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/theme/style.dart';

class TimesTab extends StatelessWidget {
  const TimesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/onBoarding_header.png'),
              const SizedBox(height: 16,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color(0xff856B3F)
                ),
                child: Image.asset('assets/images/prayTimes.png' , fit: BoxFit.cover,),
              ),
              const SizedBox(height: 16,),
              const Row(
                children: [
                  Text('   Azkar' , style:TxtStyle.small),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/eveningAzkar.png' , fit: BoxFit.cover,),
                  Image.asset('assets/images/morningAzkar.png' , fit: BoxFit.cover,),
                ]
              )
          ],
                ),
        ),
      ),
    );
  }
}