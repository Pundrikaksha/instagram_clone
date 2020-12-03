import 'package:flutter/material.dart';


import 'HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen(),
      title: "Instagram",
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.black,)
        ,

      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
