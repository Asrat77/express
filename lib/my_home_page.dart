import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:rave/express.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  //const MyHomePage({super.key, required this.title});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  final userInput = TextEditingController();
  //String displayText ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            TextField (
              controller: userInput,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "🤔",
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "display");
              }, child: const Text('Display'),
            )
          ],
        ),
      ),
    );
  }
}

