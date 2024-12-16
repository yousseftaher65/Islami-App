import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/theme/style.dart';
import 'package:islami_pojo/ui/widgets/radio_container.dart';
import 'package:islami_pojo/ui/widgets/reciters_container.dart';
import 'package:toggle_switch/toggle_switch.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/onBoarding_header.png'),
            ToggleSwitch(
              minWidth: 185,
              minHeight: 40.0,
              fontSize: 16.0,
              initialLabelIndex: currentIndex,
              activeBgColor: const [Style.primaryColor],
              activeFgColor: Style.secondaryColor,
              inactiveBgColor: Style.accentColor,
              inactiveFgColor: Style.whiteColor,
              totalSwitches: 2,
              labels: const [
                'Radio',
                'Reciters',
              ],
              onToggle: (index) {
                setState(() {
                  if (index == 0) {
                    currentIndex = 0;
                  } 
                  if (index == 1) {
                    currentIndex += 1;
                  }
                });
              },
            ),
            const SizedBox(
              height: 24,
            ),
            currentIndex == 1 ? const RecitersContainer() : const RadioContainer(),
          ],
        ),
      ),
    );
  }
}
