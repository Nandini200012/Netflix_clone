import 'package:flutter/material.dart';
import 'package:netflix_application/presentation/fast_laugh/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            20,
            (index) =>  VideoListItem(index: index,),          
          ),
        ),
      ),
    );
  }
}
