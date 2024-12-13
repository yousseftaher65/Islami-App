import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/theme/style.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Hadith Tab' ,
            style: TxtStyle.mid,
          )],
      ),
    );
  }
}