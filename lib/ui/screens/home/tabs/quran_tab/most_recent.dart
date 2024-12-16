import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/model/sura_model.dart';
import 'package:islami_pojo/ui/screens/home/tabs/quran_tab/sura_details.dart';
import 'package:islami_pojo/ui/theme/style.dart';

class MostRecent extends StatelessWidget {
  const MostRecent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final suras = Suras.suraList;

    return SizedBox(
      height: size.height * 0.16,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 8,
          );
        },
        itemCount: suras.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = suras[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, SuraDetails.tag, arguments: item);
            },
            overlayColor: const WidgetStatePropertyAll(Colors.transparent),
            child: Container(
              padding: const EdgeInsets.all(16),
              width: size.width * 0.70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Style.primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        item.nameEn,
                        style: TxtStyle.regular
                            .copyWith(color: Style.secondaryColor),
                      ),
                      Text(item.nameAr,
                          style: TxtStyle.regular
                              .copyWith(color: Style.secondaryColor)),
                      Text(
                        '${item.versesNum} verses',
                        style: TxtStyle.versesTxt2,
                      ),
                    ],
                  ),
                  Image.asset('assets/images/cardImage.png'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
