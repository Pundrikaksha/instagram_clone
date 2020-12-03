import 'package:flutter/material.dart';

import 'list.dart';


class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child:InstaStories()),
        Flexible(child: InstaList())
      ],
    );
  }
}