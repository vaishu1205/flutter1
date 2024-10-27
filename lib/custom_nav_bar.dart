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
    return BottomNavigationBar(
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
                  color: (currentIndex == 0) ? Colors.white : Colors.grey[600],
                  height: 15,
                ),
                // SizedBox(height: 2),
                Text(
                  'Home',
                  style: TextStyle(
                    color:
                        (currentIndex == 0) ? Colors.white : Colors.grey[600],
                  ),
                )
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
                  "assets/grin-alt.png",
                  color: (currentIndex == 1) ? Colors.white : Colors.grey[600],
                  height: 15,
                ),
                // SizedBox(height: 2),
                Text(
                  'Chat',
                  style: TextStyle(
                    color:
                        (currentIndex == 1) ? Colors.white : Colors.grey[600],
                  ),
                )
              ],
            ),
          ),
          label: '',
        ),

        // BottomNavigationBarItem(
        //   icon: Padding(
        //     padding: const EdgeInsets.only(top: 5),
        //     child: Column(
        //       children: [
        //         Image.asset(
        //           "assets/navbar/search2.png",
        //           color: (currentIndex == 2) ? Colors.white : Colors.grey[600],
        //           height: 15,
        //         ),
        //         // SizedBox(height: 2),
        //         Text(
        //           'Search',
        //           style: TextStyle(
        //             color:
        //                 (currentIndex == 2) ? Colors.white : Colors.grey[600],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        //   label: '',
        // ),

        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Image.asset(
                  "assets/Admin alt icon.png",
                  color: (currentIndex == 2) ? Colors.white : Colors.grey[600],
                  height: 15,
                ),
                // SizedBox(height: 2),
                Text(
                  'Settings',
                  style: TextStyle(
                    color:
                        (currentIndex == 2) ? Colors.white : Colors.grey[600],
                  ),
                )
              ],
            ),
          ),
          label: '',
        ),
      ],
    );
  }
}
