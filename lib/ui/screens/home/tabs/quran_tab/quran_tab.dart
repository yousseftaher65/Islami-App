import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/model/sura_model.dart';
import 'package:islami_pojo/ui/screens/home/tabs/quran_tab/most_recent.dart';
import 'package:islami_pojo/ui/screens/home/tabs/quran_tab/sura_list.dart';
import 'package:islami_pojo/ui/theme/style.dart';
import 'package:islami_pojo/ui/widgets/search_field.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  var userTxt = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/onBoarding_header.png'),
          SearchField(
            onSearch: (txt) {
        setState(() {
           userTxt = txt;
        });
      },
          ),
          SizedBox(
            height: size.height * 0.016,
          ),
          const Text(
            'Most Recently',
            style: TxtStyle.mid,
          ),
          SizedBox(
            height: size.height * 0.016,
          ),
          Suras.searchResults.isNotEmpty ? const SizedBox() : const MostRecent(),
          SizedBox(
            height: size.height * 0.016,
          ),
          SuraList(userTxt: userTxt,),
        ],
      ),
    );
  }
}


 // onSearch(String text) {
  //   text = userTxt.toLowerCase();
  //   Suras.searchResults.clear();
  //   if (text.isEmpty) {
  //     setState(() {});
  //     return;
  //   }

  //   for (var data in Suras.suraList) {
  //     if (data.nameAr.contains(text) ||
  //         data.nameEn.toLowerCase().contains(text.toLowerCase())) {
  //       Suras.searchResults.add(data);
  //     }
  //   }
  //   print("${Suras.searchResults}");
  //   setState(() {});
  // }