import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:instagram_clone/stories.dart';

class InstaList extends StatefulWidget {
  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {


  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ?  SizedBox(
        child:  InstaStories(),
        height: deviceSize.height * 0.15,
      )
          : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                     Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image:  DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/a3/fb/5d/a3fb5def518705c9cc739299234c2779.jpg")),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Virat",
                          style: TextStyle(fontWeight: FontWeight.bold),


                        ),
                        Text(
                          "Share with Sachin & 9 other",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),
                        ),
                      ],
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: null,
                )
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Image.network(
              "https://www.essentiallysports.com/wp-content/uploads/ICCWorldCup2019.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.heart
                          ),

                      onPressed: () {

                      },
                    ),
                 SizedBox(
                      width: 16.0,
                    ),
                     Icon(
                      FontAwesomeIcons.comment,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                   Icon(FontAwesomeIcons.paperPlane),
                  ],
                ),
                Icon(FontAwesomeIcons.bookmark)
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                 Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image:  DecorationImage(
                        fit: BoxFit.fill,
                        image:  NetworkImage(
                            "https://i.pinimg.com/originals/a3/fb/5d/a3fb5def518705c9cc739299234c2779.jpg")),
                  ),
                ),
                 SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child:  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add a comment...",
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}