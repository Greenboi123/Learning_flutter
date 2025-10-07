import 'package:flutter/material.dart';
import 'package:learning_flutter_again/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text('Home Page')),
        backgroundColor: Colors.blue,
    );
  }
}
