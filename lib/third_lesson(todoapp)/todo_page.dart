import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  // text editing controller to get access to what user typed
  TextEditingController _myController = TextEditingController();

  // greeting message:
  String greetingMessage = "";

  //greet user method:
  void greetUser() {
    String userName = _myController.text;

    setState(() {
      greetingMessage = "Hello, $userName";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),
              TextField(
                controller: _myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Type name..."),
              ),
              ElevatedButton(onPressed: greetUser, child: Text("Tap"))

            ],
          ),
        ),
      )
    );
  }
}
