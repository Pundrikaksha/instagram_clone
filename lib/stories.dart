import 'package:flutter/material.dart';

import 'StoryPage.dart';
class BuildInstagramStory extends StatelessWidget {
  const BuildInstagramStory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(itemBuilder: (context,index){
        return FlatButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>StoryPage()));
          },
          child: CircleAvatar(

            backgroundImage: NetworkImage("https://bsmedia.business-standard.com/_media/bs/img/topic-profile/profile-images/thumb/463_463/1559746194.png"),

            radius:35,
            child: Padding(
              padding: const EdgeInsets.only(bottom:8.0,right: 6.0),
              child:index==0? Align(alignment: AlignmentDirectional.bottomEnd,child: Icon(Icons.add_circle_sharp,color:Colors.blue[400],)):Container(),
            ),

          ),
        );

      },
        itemCount: 5,
        shrinkWrap: true,
        scrollDirection:Axis.horizontal,
        physics: ScrollPhysics(),

      ),
    );
  }
}