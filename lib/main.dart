import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:rave/display_page.dart';
import 'my_home_page.dart';
import 'package:flutter/services.dart';



void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode([SystemUiOverlay.bottom] as SystemUiMode);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //initialRoute: "/",
      //routes: {
        //"/": (context) => MyHomePage(),
        //"display": (context) => DisplayPage(text: "")
      //},
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
         primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
