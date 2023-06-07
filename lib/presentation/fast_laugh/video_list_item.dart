import 'package:flutter/material.dart';
import 'package:netflix_application/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;

  const VideoListItem({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
         color: Colors.accents[index % Colors.accents.length]
        ),
        Align(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side
                CircleAvatar(
                  backgroundColor: kBlackclolr,
                  radius: 20,
                  child: IconButton(onPressed: (){}
                  , icon: const Icon(Icons.volume_mute)),
                ),
                //right side
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(),
                  VideoActionsWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                  VideoActionsWidget(icon: Icons.add, title: 'My List'),
                  VideoActionsWidget(icon: Icons.share, title: 'Share'),
                  VideoActionsWidget(icon: Icons.play_arrow, title: 'Play'),
                 ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}


class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;

  const VideoActionsWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Icon(icon,color: kwhitecolor,),Text(title,style: const TextStyle(
            color: kwhitecolor,
            fontSize: 14
          ),)
        ],
      ),
    );
  }
}
