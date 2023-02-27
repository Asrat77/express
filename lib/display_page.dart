import 'package:flutter/material.dart';
import 'package:rave/my_home_page.dart';

import 'express.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({super.key});



  @override
  Widget build(BuildContext context) {
    //String displaytext = express(userInput.text) as String;
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
              child: const RotatedBox(

                quarterTurns: 3,
                child: Center(
                  child:  Text(
                    "HeLLo",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 100,
                    ),

                  ),
                ),
              ),

            ),
          )
        ],
      ),

    );
  }
}

