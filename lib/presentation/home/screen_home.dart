import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_application/core/colors/colors.dart';
import 'package:netflix_application/core/constants.dart';
import 'package:netflix_application/presentation/home/widgets/background_card.dart';
import 'package:netflix_application/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_application/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            print(direction);
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const BackgroundCard(),
                  const MainTitleCard(
                    title: 'Released in the Past Year',
                  ),
                  kheight,
                  const MainTitleCard(
                    title: 'Trending Now',
                  ),
                  kheight,
                  const NumberTitleCard(),
                  kheight,
                  const MainTitleCard(
                    title: 'Tense Dramas',
                  ),
                  kheight,
                  const MainTitleCard(
                    title: 'South Indian Cinemas',
                  ),
                  kheight,
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 80,
                      color: Colors.black.withOpacity(0.3),
                      child: Column(
                        children: [
                          Row(children: [
                            Image.network(
                              "https://1000logos.net/wp-content/uploads/2017/05/Netflix-Logo-2006.png",
                              width: 50,
                              height: 50,
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.cast,
                              color: kwhitecolor,
                            ),
                            kwidth,
                            Container(
                              width: 30,
                              height: 30,
                              color: Colors.blue,
                            ),
                            kwidth
                          ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Tv Shows',style: Khometitletext,),
                             Text('Movies',style: Khometitletext,),
                                Text('Categories',style: Khometitletext,),
                            ],
                            

                          ),
                        ],
                      ),
                    )
                  : kheight
            ],
          ),
        );
      },
    ));
  }
  //     )

  //     );

  // }
}
