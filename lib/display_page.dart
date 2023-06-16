import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rave/my_home_page.dart';
import 'package:marquee/marquee.dart';

import 'express.dart';

class DisplayPage extends StatefulWidget {
  final String text;

  DisplayPage({required this.text});

  @override
  State<DisplayPage> createState() => _displayPageState();
}

class _displayPageState extends State<DisplayPage> {
  // Declare the morse_dict dictionary here
  final morse_dict = {
    '': '.-',
    'B': '-...',
    'C': '-.-.',
    'D': '-..',
    'E': '.',
    'F': '..-.',
    'G': '--.',
    'H': '....',
    'I': '..',
    'J': '.---',
    'K': '-.-',
    'L': '.-..',
    'M': '--',
    'N': '-.',
    'O': '---',
    'P': '.--.',
    'Q': '--.-',
    'R': '.-.',
    'S': '...',
    'T': '-',
    'U': '..-',
    'V': '...-',
    'W': '.--',
    'X': '-..-',
    'Y': '-.--',
    'Z': '--..'
  };

  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Color _containerColor = Colors.black;

    // Modify the user's input here
    String modifiedText = widget.text.toUpperCase();

    // Convert the modified input to Morse code
    String morseCode = '';
    for (int i = 0; i < modifiedText.length; i++) {
      String letter = modifiedText[i];
      if (morse_dict.containsKey(letter)) {
        morseCode += morse_dict[letter].toString() + ' ';
      }
    }

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            //top: 70,
            child: Ink(
              child: InkWell(
                child: Container(
                  width: width,
                  height: height,
                  color: _containerColor,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Center(
                      // Use the modified input in the Marquee widget
                      child: buildAnimatedText(morseCode),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    _containerColor = _containerColor == Colors.black
                        ? Colors.white12
                        : Colors.white12;

                    print(widget.text);
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildAnimatedText(String text) => Marquee(
        text: text,
        style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 70,
            fontStyle: FontStyle.italic,
            color: Colors.redAccent),
        blankSpace: 80,
        //accelerationCurve: Curves.linear,
        velocity: 80,
      );
}
