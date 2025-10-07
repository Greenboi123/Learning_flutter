import 'package:flutter/material.dart';
import 'package:learning_flutter_again/widgets/custom_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text('Profile Page')),
        backgroundColor: Colors.green,
    );
  }
}
