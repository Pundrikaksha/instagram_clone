import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/body.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 1.0,
        title:Container(  margin: const EdgeInsets.only(left:20.0),height :80,child: Image.asset("assets/images/insta_logo.jpg")),
        actions: [

          Padding(
            padding: const EdgeInsets.only(right:25.0),
            child: Icon(
                FontAwesomeIcons.search
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right:25.0),
            child: Icon(
              FontAwesomeIcons.facebookMessenger
            ),
          ),

        ],
      ),
      body: InstaBody(),
      bottomNavigationBar: Container(
        height: 65.0,
        child: BottomAppBar(
          color: Colors.black,
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              new IconButton(
                icon: Icon(
                  Icons.home,
                ),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(
                  Icons.live_tv,
                ),
                onPressed: null,
              ),
              new IconButton(
                icon: Icon(
                  Icons.add_box_outlined,
                ),
                onPressed: null,
              ),
              new IconButton(
                icon: Icon(
                  Icons.favorite_border_outlined
                ),
                onPressed: null,
              ),
              new IconButton(
                icon: Icon(
                  Icons.account_circle,
                ),
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
