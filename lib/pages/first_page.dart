import 'package:flutter/material.dart';
import 'package:learning_flutter_again/pages/home_page.dart';
import 'package:learning_flutter_again/pages/profile_page.dart';
import 'package:learning_flutter_again/pages/settings_page.dart';
import 'package:learning_flutter_again/widgets/custom_app_bar.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0; // starts at homepage

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = <Widget>[
    //home
    HomePage(),

    //profile
    ProfilePage(),

    //settings
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('TopBar'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'),
        ])
    );
  }
}
