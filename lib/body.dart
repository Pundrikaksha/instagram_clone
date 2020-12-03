import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/stories.dart';

import 'StoryPage.dart';

class BuildInstagramBody extends StatelessWidget {
  const BuildInstagramBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        BuildInstagramStory(),
        Divider(

          thickness:0.5 ,
        ),

        ListView.builder(itemBuilder: (context,index){
          return Column(
            children: [
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(


                    backgroundImage: NetworkImage("https://bsmedia.business-standard.com/_media/bs/img/topic-profile/profile-images/thumb/463_463/1559746194.png"),
                    radius:22
                    ,

                  ),

                ),
                title: Text("Virat"),
                subtitle:Text("Paid partnership with puma india") ,
                trailing: Padding(
                  padding: const EdgeInsets.only(top:12.0),
                  child: Icon(Icons.more_vert),
                ),
              ),
              Container(



                decoration: BoxDecoration(

                  image: DecorationImage(image: NetworkImage("https://www.coolbeardstyles.com/wp-content/uploads/2019/12/virat-kohli-beard-style-hd-image.jpg"),fit:BoxFit.cover,)
                  ,
                ),


                height: 500,

              ),
              Row(
                children: [
                  BuildIcon(icon:FontAwesomeIcons.heart ),
                  BuildIcon(icon:FontAwesomeIcons.comment ),
                  BuildIcon(icon:FontAwesomeIcons.facebookMessenger),

                  Padding(
                    padding: const EdgeInsets.only(left:175.0),
                    child: BuildIcon(icon:FontAwesomeIcons.bookmark ),
                  ),

                ],
              )
            ],
          );


        },
          itemCount: 5,
          shrinkWrap: true,

          physics: ScrollPhysics(),

        ),

      ],
    );
  }
}



class BuildIcon extends StatelessWidget {
  const BuildIcon({
    Key key, this.icon
  }) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:18.0,horizontal: 15),
      child: Icon(icon,),
    );
  }
}
