import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/model/sura_model.dart';
import 'package:islami_pojo/ui/screens/home/tabs/quran_tab/sura_details.dart';
import 'package:islami_pojo/ui/theme/style.dart';

class SuraList extends StatefulWidget {
  const SuraList({super.key});

  @override
  State<SuraList> createState() => _SuraListState();
}

class _SuraListState extends State<SuraList> {
  @override
  Widget build(BuildContext context) {
    final suras = Suras.suraList;
    return Expanded(
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Style.whiteColor,
              endIndent: 40,
              indent: 40,
            );
          },
          itemCount: suras.length,
          itemBuilder: (context, index) {
            final sura = suras[index];
            return InkWell(
              overlayColor: const WidgetStatePropertyAll(Colors.transparent),
              onTap: () {
                setState(() {
                Navigator.pushNamed(context, SuraDetails.tag,arguments: index);
                });
              },
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 52,
                    height: 52,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/suraNum.png'),
                      ),
                    ),
                    child: Text(
                      '${index + 1}',
                      style: TxtStyle.mid,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        sura.nameEn,
                        style: TxtStyle.mid,
                      ),
                      Text(
                        "${sura.versesNum.toString()} verses",
                        style: TxtStyle.mid,
                      )
                    ],
                  ),
                  const Spacer(),
                  Text(
                    sura.nameAr,
                    style: TxtStyle.mid,
                  )
                ],
              ),
            );
          }),
    );
  }
}
