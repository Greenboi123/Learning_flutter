import 'package:flutter/material.dart';
import 'package:learning_flutter_again/widgets/custom_app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text('Settings Page')),
        backgroundColor: Colors.red,
    );
  }
}
