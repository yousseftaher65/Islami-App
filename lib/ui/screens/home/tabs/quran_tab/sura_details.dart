import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_pojo/ui/model/sura_model.dart';
import 'package:islami_pojo/ui/theme/style.dart';

class SuraDetails extends StatefulWidget {
  static const String tag = 'sura_details';
  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String fileContent = '';
  @override
  Widget build(BuildContext context) {
    final sura = ModalRoute.settingsOf(context)?.arguments as SuraModel;
    final index = Suras.suraList.indexOf(sura) ;
    if (fileContent.isEmpty) {
      getSuraContent(index);
    }

    return Scaffold(
      backgroundColor: Style.secondaryColor,
      appBar: AppBar(
        backgroundColor: Style.secondaryColor,
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Style.primaryColor
        ),
        title: Text(
          sura.nameEn,
          style: TxtStyle.regular.copyWith(color: Style.primaryColor),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/suraSide1.png'),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    children: [
                      Text(" سورة ${sura.nameAr}",
                          style:
                              TxtStyle.regular.copyWith(color: Style.primaryColor),),
                              const SizedBox(height: 24,),
                      Text( index == 8 || index == 0 ? '' :'بسم الله الرحمن الرحيم',
                          style:
                              TxtStyle.small.copyWith(color: Style.primaryColor),),
                    ],
                  ),
                ),
                Image.asset('assets/images/suraSide2.png'),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Text(
                    fileContent,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TxtStyle.regular.copyWith(color: Style.primaryColor),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/suraSide3.png'),
                Image.asset('assets/images/suraSide4.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future getSuraContent(int suraNum) async {
    Future<String> future =
        rootBundle.loadString('assets/suras/${suraNum + 1}.txt');
    fileContent = await future;
    setState(() {});
    List<String> suraLines = fileContent.trim().split('\n');
    for (int i = 0; i < suraLines.length; i++) {
      suraLines[i] += "(${i+1})";
    }
    fileContent = suraLines.join();
  }
}
