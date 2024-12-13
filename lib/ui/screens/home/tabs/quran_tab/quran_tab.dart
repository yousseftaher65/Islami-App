import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/screens/home/tabs/quran_tab/sura_list.dart';
import 'package:islami_pojo/ui/theme/style.dart';
import 'package:islami_pojo/ui/widgets/search_field.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left:  16.0 , right: 16.0 , bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/onBoarding_header.png'),
          SearchField(
            controller: TextEditingController(),
          ),
          SizedBox(
            height: size.height * 0.016,
          ),
          Text(
            'Most Recently',
            style: TxtStyle.mid,
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
          Text(
            'Sura List',
            style: TxtStyle.mid,
          ),
          SuraList(),
        ],
      ),
    );
  }
}
