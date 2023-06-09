import 'package:flutter/material.dart';
import 'package:netflix_application/core/constants.dart';

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        image: const DecorationImage(  fit: BoxFit.cover,
          image: NetworkImage(
              'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg'),
        ),
        borderRadius: kRadius10,
      ),
    );
  }
}
 