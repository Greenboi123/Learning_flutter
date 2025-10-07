import 'package:flutter/material.dart';
import 'package:learning_flutter_again/widgets/custom_app_bar.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titleText: '2nd Page'),
    );
  }
}
