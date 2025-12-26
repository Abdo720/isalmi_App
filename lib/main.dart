import 'package:flutter/material.dart';
import 'package:islamy/IntroScreen.dart';
import 'package:islamy/SplachScreen.dart';
import 'package:islamy/screens/HomeScreen/HomeScreen.dart';
import 'package:islamy/screens/HomeScreen/Quran_Tab.dart';

import 'screens/surs_details/sura_details_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splach.routeName,
      routes: {
        Splach.routeName : (context) => SplachScreen(),
        Homescreen.routeName : (context) => Homescreen(),
        Intro.routeName : (context)=> IntroScreen(),
        SuraDetailsScreen_State.routeName : (context)=> SuraDetailsScreen(),
      },
    );
  }
}