import 'package:flutter/material.dart';
import 'package:netflix_application/core/constants.dart';
import 'package:netflix_application/presentation/search/title.dart';

const imageurl =
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ym1dxyOk4jFcSl4Q2zmRrA5BEEN.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        kheight,
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1 / 1.4,
            children: List.generate( 
                  20,
                  (index) {
                  
                    return const MainCard();
                  },
                ),
            
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(
                imageurl,
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
