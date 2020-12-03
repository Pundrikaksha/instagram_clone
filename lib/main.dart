import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'HomeScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData.dark().copyWith(
       primaryColor: Colors.black,
        // primaryIconTheme: IconThemeData(
        //   color: Colors.black
        // ),
        primaryTextTheme: TextTheme(
          title: TextStyle(color: Colors.black,fontFamily: "Aveny"),

        )
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
