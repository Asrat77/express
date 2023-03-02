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
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(

      body: Stack(

        children: [
          Positioned(
            //top: 70,
            child: Container(
              width: width,
              height: height,
              decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(30),
                color: Colors.redAccent,
              ),
              child:  RotatedBox(
                quarterTurns: 3,
                child: Center(
                  child: buildAnimatedText(widget.text ?? "text")
                ),
              ),
            ),
          )
        ],
      ),

    );
  }

  Widget buildAnimatedText(String text) => Marquee(
      text: widget.text,
    style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 80,
        color: Colors.black54),
    blankSpace: 80
  );



}


