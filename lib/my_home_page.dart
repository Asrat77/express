import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:rave/display_page.dart';
import 'package:rave/express.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  //const MyHomePage({super.key, required this.title});
  @override
  State<MyHomePage> createState() => _MyHomePageState("");
}
class _MyHomePageState extends State<MyHomePage> {
  final userInput = TextEditingController();
  String text;

  _MyHomePageState(this.text);

  //String displayText ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            TextField (

              onChanged: (val) => text = val,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: "Enter a text to display...",
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,

                  MaterialPageRoute(builder: (context) => DisplayPage(text: text)));

              },
              child: const Text('Display'),
            )
          ],
        ),
      ),
    );
  }
}

