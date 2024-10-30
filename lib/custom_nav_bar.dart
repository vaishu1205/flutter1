// custom_bottom_nav.dart
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent, // Remove splash effect
        highlightColor: Colors.transparent, // Remove spread effect
      ),
      child: BottomNavigationBar(
        backgroundColor: Color(0xFF1A0129),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey[600],
        selectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  Image.asset(
                    "assets/house-chimney.png",
                    color:
                        (currentIndex == 0) ? Colors.white : Colors.grey[600],
                    height: (currentIndex == 0) ? 20 : 15,
                  ),
                ],
              ),
            ),
            label: 'asnod',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  Image.asset(
                    "assets/grin-alt.png",
                    color:
                        (currentIndex == 1) ? Colors.white : Colors.grey[600],
                    height: (currentIndex == 1) ? 20 : 15,
                  ),
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  Image.asset(
                    "assets/Admin alt icon.png",
                    color:
                        (currentIndex == 2) ? Colors.white : Colors.grey[600],
                    height: (currentIndex == 2) ? 20 : 15,
                  ),
                ],
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
