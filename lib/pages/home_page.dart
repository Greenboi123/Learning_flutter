import 'package:flutter/material.dart';
import 'package:learning_flutter_again/pages/settings_page.dart';
import 'package:learning_flutter_again/widgets/custom_app_bar.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const CustomAppBar(titleText: '1st Page'),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: Column(
          children: [
            // Takes up space for the logo
            DrawerHeader(child: Icon(
                Icons.local_pizza,
                size:50,
                color: Colors.white)
            ),
            // Positions for other tiles
            ListTile( // Not ListView, just one tile
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Home', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, '/homePage');
              },
            ),
            ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text('Settings', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/settingsPage');
                },
            )
          ],
        )
      ),
    );
  }
}
