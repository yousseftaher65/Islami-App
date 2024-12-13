import 'package:flutter/material.dart';
import 'package:islami_pojo/ui/theme/style.dart';

class BottomNav extends StatefulWidget {
 final Function callBack;
  const BottomNav({super.key , required this.callBack});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

int currentIndex = 0;

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      selectedItemColor: Style.whiteColor,
      backgroundColor: Style.primaryColor,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        currentIndex = value;
        widget.callBack(currentIndex);
        setState(() {});
      },
      items: [
        BottomNavigationBarItem(
          label: 'Quran',
          icon: _buildNavItem('quran', 0),
        ),
        BottomNavigationBarItem(
          label: 'Hadith',
          icon: _buildNavItem('hadith', 1),
        ),
        BottomNavigationBarItem(
          label: 'Sebha',
          icon: _buildNavItem('sebha', 2),
        ),
        BottomNavigationBarItem(
          label: 'Radio',
          icon: _buildNavItem('radio', 3),
        ),
        BottomNavigationBarItem(
          label: 'Times',
          icon: _buildNavItem('times', 4),
        ),
      ],
    );
  }


  Widget _buildNavItem(String imageName, int index) {
    return currentIndex == index
        ? Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Style.accentColor,
            ),
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            child: ImageIcon(
              size: 30,
              AssetImage('assets/images/${imageName}Icon.png'),
            ),
          )
        : ImageIcon(
            size: 30,
            AssetImage('assets/images/${imageName}Icon.png'),
          );
  }
}
