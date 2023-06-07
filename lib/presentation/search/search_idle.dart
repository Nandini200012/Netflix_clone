import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_application/core/colors/colors.dart';
import 'package:netflix_application/core/constants.dart';
import 'package:netflix_application/presentation/search/title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w250_and_h141_face/hTExot1sfn7dHZjGrk0Aiwpntxt.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title:'Top Searches'),
        kheight,
        Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: ((context, index) => const TopSearchIconTile()),
                separatorBuilder: (context, index) => kheight20,
                itemCount: 10))
      ],
    );
  }
}



class TopSearchIconTile extends StatelessWidget {
  const TopSearchIconTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 65,
          width: screenWidth * 0.35,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          )),
        ),
        kwidth,
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(
              color: kwhitecolor, fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const CircleAvatar(
          backgroundColor: kwhitecolor,
          radius: 25,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: kBlackclolr,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kwhitecolor,
            ),
          ),
        )
      ],
    );
  }
}
