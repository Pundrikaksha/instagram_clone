import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {


  final stories = Expanded(
    child: new ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => new Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          new Container(
            width: 60.0,
            height: 60.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage(
                      "https://i.pinimg.com/originals/a3/fb/5d/a3fb5def518705c9cc739299234c2779.jpg")),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
          index == 0
              ? Positioned(
              right: 10.0,
              child: new CircleAvatar(
                backgroundColor: Colors.blueAccent,
                radius: 10.0,
                child: new Icon(
                  Icons.add,
                  size: 14.0,
                  color: Colors.white,
                ),
              ))
              : new Container()
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.only(bottom:15.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          stories,
        ],
      ),
    );
  }
}