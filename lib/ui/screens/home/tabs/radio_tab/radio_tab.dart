import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/theme/style.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Radio Tab',style: TxtStyle.mid,)],
      ),
    );
  }
}