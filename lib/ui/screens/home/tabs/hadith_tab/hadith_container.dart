import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_pojo/ui/model/hadith_model.dart';
import 'package:islami_pojo/ui/screens/home/tabs/hadith_tab/hadith_details.dart';
import 'package:islami_pojo/ui/theme/style.dart';

class HadithContainer extends StatefulWidget {
 const HadithContainer({super.key});

  @override
  State<HadithContainer> createState() => _HadithContainerState();
  
}

class _HadithContainerState extends State<HadithContainer> {
  final List<HadithModel> hadiths = [];
  
  @override
  Widget build(BuildContext context) {

    if (hadiths.isEmpty){
      getHadithContent();
    }
    
    return CarouselSlider(
      options: CarouselOptions(height: 650,
        viewportFraction: 0.75,
        enlargeCenterPage: true,
        enlargeFactor: 0.09,
      ),
      items: hadiths.map((hadith) {
        return Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, HadithDetails.tag,
                    arguments: hadith);
                });
                
              },
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(
                    'assets/images/Hadith Card.png',
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: Text(
                            hadith.title,
                            style: TxtStyle.regular
                                .copyWith(color: Style.secondaryColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Text(
                            hadith.content.toString(),
                            textAlign: TextAlign.center,
                            maxLines: 20,
                            overflow: TextOverflow.ellipsis,
                            style: TxtStyle.mid
                                .copyWith(color: Style.secondaryColor ,wordSpacing: 4),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }

  getHadithContent() {
    rootBundle.loadString('assets/ahadith/ahadeth.txt').then((file) {
      List<String> ahadeth = file.split('#');
      for (String content in ahadeth) {
        List<String> hadithLines = content.trim().split('\n');
        String hadithTitle = hadithLines[0];
        hadithLines.removeAt(0);
        List<String> hadithContent = hadithLines;
        HadithModel hadith =
            HadithModel(title: hadithTitle, content: hadithContent);
        hadiths.add(hadith);
      }
      setState(() {});
    });
  }
}
