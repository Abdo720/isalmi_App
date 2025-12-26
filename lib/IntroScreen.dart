import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamy/Assets/Style.dart';
import 'package:islamy/Assets/color.dart';

import 'screens/HomeScreen/HomeScreen.dart';

class IntroScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Intro();
}

class Intro extends State<IntroScreen>{
  static const String routeName = "IntroScreen";
  List <PageViewModel> listPagesViewModel = [
    PageViewModel(
      titleWidget: Padding(
        padding: EdgeInsets.only(top: 100),
        child: Text("Welcome To Islmi App" , textAlign: TextAlign.center , style: AppStyle.title,),
      ),

      body: "",
      image: Image.asset("assets/images/intro1.png"),
    ),
    PageViewModel(
      titleWidget:  Padding(
        padding: EdgeInsets.only(top: 100),
        child: Text("Welcome To Islami" , textAlign: TextAlign.center, style: AppStyle.title,),
      ),

      bodyWidget: Text("We Are Very Excited To Have You In Our Community" , textAlign: TextAlign.center, style: AppStyle.body,),
      image: Image.asset("assets/images/intro2.png"),
      ),
    PageViewModel(
      titleWidget: Padding(
        padding: EdgeInsets.only(top: 100),
        child: Text("Reading the Quran" , textAlign: TextAlign.center, style: AppStyle.title,),
      ),

      bodyWidget: Text("Read, and your Lord is the Most Generous" , textAlign: TextAlign.center, style: AppStyle.body,),
      image: Image.asset("assets/images/intro3.png"),

    ),
    PageViewModel(
      titleWidget:  Padding(
        padding: EdgeInsets.only(top: 100),
        child: Text("Bearish" , textAlign: TextAlign.center, style: AppStyle.title,),
      ),
      bodyWidget: Text("Praise the name of your Lord, the Most High" , textAlign: TextAlign.center, style: AppStyle.body,),
      image: Image.asset("assets/images/intro4.png"),
    ),
    PageViewModel(
      titleWidget: Padding(
        padding: EdgeInsets.only(top: 100),
        child: Text("Holy Quran Radio" , textAlign: TextAlign.center, style: AppStyle.title,),
      ),

      bodyWidget: Text("You can listen to the Holy Quran Radio through the application for free and easily" , textAlign: TextAlign.center, style: AppStyle.body,),
      image:  Image.asset("assets/images/intro5.png"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        pages: listPagesViewModel,
        showSkipButton: true,
        bodyPadding: EdgeInsets.only(top: 230 ),
        globalBackgroundColor: Color(0xFF202020),
        globalHeader: Image.asset("assets/images/itro_top.png"),
        skip: Text("Skip" , style: AppStyle.body,),
        next:  Text("Next" , style: AppStyle.body,),
        done:  Text("Done", style: AppStyle.body),
        dotsDecorator: DotsDecorator(
          color: Color(0xFF707070),
          activeColor: AppColors.primary
        ),
        onDone: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen()));
        },
        onSkip: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen()));
        },
    );
  }
}