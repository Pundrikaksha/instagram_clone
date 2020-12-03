import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/body.dart';

import 'StoryPage.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:Container(  margin: const EdgeInsets.only(left:20.0),height :80,child: Image.asset("assets/images/insta_logo.jpg")),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right:25.0),
            child: Icon(
                FontAwesomeIcons.search
            ),
          )
          ,Padding(
            padding: const EdgeInsets.only(right:25.0),
            child: Icon(
                FontAwesomeIcons.facebookMessenger
            ),
          )
        ],
        elevation: 0.2,

      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap:onTabTapped,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        items:[

          BottomNavigationBarItem(icon:Icon( FontAwesomeIcons.home),label: "",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon:Icon( FontAwesomeIcons.tv),label: ""),

          BottomNavigationBarItem(icon:Icon( FontAwesomeIcons.plusSquare),label: "")
          ,BottomNavigationBarItem(icon:Icon( FontAwesomeIcons.heart),label: "")
          ,BottomNavigationBarItem(icon:Icon( FontAwesomeIcons.user),label: "")

        ],
      ),
      body:BuildInstagramBody() ,

    );
  }
}

