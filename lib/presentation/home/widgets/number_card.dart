import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_application/core/colors/colors.dart';
import 'package:netflix_application/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key,required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg'),
               fit: BoxFit.cover ),
                borderRadius: kRadius10,
                
              ),
            ),
          ],
        ),
        Positioned(
          left: 13,bottom: -30,
          child: BorderedText(
            strokeColor: kwhitecolor,
            strokeWidth: 10.0, 
            child: Text('${index+1}',
            style: const TextStyle(color: kBlackclolr,
            fontWeight: FontWeight.bold,
              fontSize: 130,
              decoration: TextDecoration.none,
               decorationColor: Colors.blueAccent
            ),),
          ),
        )
      ],
    );
  }
}   