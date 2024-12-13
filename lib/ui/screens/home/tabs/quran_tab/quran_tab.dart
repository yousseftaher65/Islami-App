import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/theme/style.dart';
import 'package:islami_pojo/ui/widgets/search_field.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              Image.asset('assets/images/onBoarding_header.png'),
              SearchField(
                controller: TextEditingController(),
              ),
              SizedBox(
                height: size.height * 0.016,
              ),
              const Row(
                children: [
                  Text(
                    'Most Recently',
                    style: TxtStyle.mid,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.016,
              ),
              Container(
                color: Style.primaryColor,
                height: size.height * 0.15,
              ),
              SizedBox(
                height: size.height * 0.016,
              ),
              const Row(
                children: [
                  Text(
                    'Sura List',
                    style: TxtStyle.mid,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
