import 'package:flutter/material.dart';
import 'package:netflix_application/core/colors/colors.dart';
import 'package:netflix_application/presentation/downloads/screen_downloads.dart';
import 'package:netflix_application/presentation/downloads/widgets/bottom_nav.dart';
import 'package:netflix_application/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_application/presentation/home/screen_home.dart';
import 'package:netflix_application/presentation/new_and%20_hot/screen_new_and%20hot.dart';
import 'package:netflix_application/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});

final _pages= [
  const ScreenHome(),
 const ScreenNewAndHot(),
 const ScreenFastLaugh(),
 const ScreenSearch(),
 ScreenDownloads()
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      backgroundColor: backgroundcolor,
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangeNotifier,
         builder: (context,int index, _) {
          return _pages[index];
           
         },),
      ),
     bottomNavigationBar:const BottomNavigationWidget(),
   
     );
  }
}
 