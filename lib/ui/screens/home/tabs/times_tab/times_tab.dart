import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/theme/style.dart';

class TimesTab extends StatelessWidget {
  const TimesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Times Tab',
            style: TxtStyle.mid,
          )
        ],
      ),
    );
  }
}