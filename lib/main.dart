import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_application/core/colors/colors.dart';

import 'presentation/downloads/main_page/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Neflix',
        theme: ThemeData(
          scaffoldBackgroundColor: backgroundcolor,
          textTheme: TextTheme(
            bodyLarge: GoogleFonts.montserrat(color: Colors.white),
            bodyMedium: GoogleFonts.montserrat(color: Colors.white),
          ),
          fontFamily: GoogleFonts.montserrat().fontFamily,
          primarySwatch: Colors.blue,
        ),
      home:  ScreenMainPage(),
    );
  }
}




