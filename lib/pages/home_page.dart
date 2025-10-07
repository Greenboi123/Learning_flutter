import 'package:flutter/material.dart';
import 'package:learning_flutter_again/pages/settings_page.dart';
import 'package:learning_flutter_again/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const CustomAppBar(titleText: 'Home Page'),
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
                // 'pop' the drawer seems to push draw away for when you return
                Navigator.pop(context);
                // move to the home page
                Navigator.pushNamed(context, '/homePage');
              },
            ),
            ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text('Settings', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/settingsPage');
                },
            )
          ],
        )
      ),
    );
  }
}
