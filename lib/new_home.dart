import 'package:flutter/material.dart';


import 'package:ishipprj/chat_intro_screen.dart';
import 'package:ishipprj/custom_nav_bar.dart';
import 'package:ishipprj/home_screen.dart';
import 'package:ishipprj/profile.dart';

int _selectedIndex = 0;

class NewHome extends StatefulWidget {
  const NewHome({super.key});

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  @override
  Widget build(BuildContext context) {
    // Add your screens here
    final List<Widget> _screens = [
      HomeScreen(),
      ChatIntroScreen(),
      // MoodTrackerPage(),
      // RootApp1()
      ProfilePage(
          email: 'email',
          age: 'age',
          phone: 'phone',
          gender: 'gender',
          name: 'name')
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
