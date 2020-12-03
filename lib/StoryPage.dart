import 'package:flutter/material.dart';
import "package:story_view/story_view.dart";
class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final StoryController storyController = StoryController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: StoryView(

        storyItems: [
          StoryItem.text(
            title: "No one is perfect - that's why pencils have erasers",
            backgroundColor: Colors.blue,

          ),
          StoryItem.text(
            title: "It always seems impossible until it",
            backgroundColor: Colors.red,
            textStyle: TextStyle(
              fontFamily: 'Dancing',
              fontSize: 40,
            ),
          ),

        StoryItem.text(
          title: "“You're off to great places, today is your day",
          backgroundColor: Colors.blue,

        ),

        ],
        onStoryShow: (s) {
          print("Showing a story");
        },
        onComplete: () {
          print("Completed a cycle");
        },
        progressPosition: ProgressPosition.top,
        repeat: false,
        controller: storyController,

      ),

    );
  }
}
