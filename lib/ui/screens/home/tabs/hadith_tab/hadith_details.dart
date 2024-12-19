import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/model/hadith_model.dart';
import 'package:islami_pojo/ui/theme/style.dart';

class HadithDetails extends StatelessWidget {
  static const String tag = 'hadith-details';
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final model = ModalRoute.of(context)!.settings.arguments as HadithModel;

    return Scaffold(
      backgroundColor: Style.secondaryColor,
      appBar: AppBar(
        backgroundColor: Style.secondaryColor,
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Style.primaryColor),
        title: Text(
          model.title,
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
                      Text(
                        model.title,
                        style: TxtStyle.regular
                            .copyWith(color: Style.primaryColor),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
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
                child: ListView.builder(
                  itemCount: model.content.length,
                  itemBuilder: (context, index) {
                    return Text(
                      model.content[index],
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style:
                          TxtStyle.regular.copyWith(color: Style.primaryColor),
                    );
                  },
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
}
