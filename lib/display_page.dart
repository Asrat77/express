import 'package:flutter/material.dart';

class  DisplayPage extends StatefulWidget {
  //const ({Key? key}) : super(key: key);

  @override
  State<DisplayPage> createState() => _DisplayState();
}

class _DisplayState extends State<DisplayPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Stack(
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
                      "Hello",
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
      ),

    );


  }
}
