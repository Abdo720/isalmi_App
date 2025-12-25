import 'package:flutter/material.dart';
import 'package:islamy/Assets/color.dart';
import 'package:islamy/HomeScreen/Hadeth_Tab.dart';
import 'package:islamy/HomeScreen/Quran_Tab.dart';
import 'package:islamy/HomeScreen/Radio_Tab.dart';
import 'package:islamy/HomeScreen/Sebh_Tab.dart';
import 'package:islamy/HomeScreen/Time_Tab.dart';

class Homescreen extends StatefulWidget{

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int ind = 0 ;
  List <Widget> Tabs = [
    QuranTab(),
    HadethTab(),
    SebhTab(),
    RadioTab(),
    TimeTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        backgroundColor: AppColors.primary,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
          unselectedItemColor: Color(0xFF202020),
          selectedItemColor: Color(0xFFFFFFFF),
          currentIndex: ind,
          onTap: (value){
            ind = value ;
            setState(() { });
          },
          items: [
        BottomNavigationBarItem(icon: getback("ic_quran" , 0), label: "Quran"),
        BottomNavigationBarItem(icon: getback("ic_hadeth" , 1), label: "Hadeth"),
        BottomNavigationBarItem(icon: getback("ic_sebha" , 2), label: "Sebha"),
        BottomNavigationBarItem(icon: getback("ic_radio" , 3), label: "Radio"),
        BottomNavigationBarItem(icon: getback("ic_time" , 4), label: "Time")
      ]),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Tabs [ind] ,
          Image.asset("assets/images/itro_top.png")
        ],
      ),
    );
  }
  Widget getback (String name , int index){
    return ind == index ? Container(
      padding: EdgeInsets.symmetric(vertical: 12 , horizontal: 2),
      decoration: BoxDecoration(
          color: Colors.black12 ,
        borderRadius: BorderRadius.circular(12)
      ),
      child: ImageIcon(AssetImage("assets/images/$name.png"),
    ) ): ImageIcon(AssetImage("assets/images/$name.png") );
  }
}