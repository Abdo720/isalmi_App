import 'package:flutter/material.dart';
import 'package:islamy/IntroScreen.dart';
import 'package:islamy/screens/HomeScreen/HomeScreen.dart';

class SplachScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Splach();
}

class Splach extends State<SplachScreen>{
  static const String routeName = "SplashScreen";
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3) , (){
      Navigator.pushReplacementNamed(context, Homescreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Spacer(),
          Center(
            child: Image.asset("assets/images/splachscreen_logo.png" , fit: BoxFit.cover,),
          ),
          Spacer(),
          Image.asset("assets/images/splachscreen_brand.png" , width: 200, height: 200,)
        ],
      ),
    );
  }
}