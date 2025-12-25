import 'package:flutter/cupertino.dart';
import 'package:islamy/Assets/color.dart';
import 'package:islamy/data/Models/data_Sura_List.dart';

class Recentsura extends StatelessWidget {
  DataSuraList recntely;
  Recentsura({required this.recntely});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 150,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${recntely.NameEn}" , style: TextStyle(color: Color(0xFF202020) , fontWeight: FontWeight.bold , fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${recntely.NameAr}" , style: TextStyle(color: Color(0xFF202020) , fontWeight: FontWeight.bold , fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${recntely.NumberVerses} Verses" , style: TextStyle(color: Color(0xFF202020) , fontWeight: FontWeight.bold , fontSize:14)),
            ),
          ])),
          Expanded(
            child: Image.asset(
              "assets/images/img_most_recent.png",
              width: 150,
              height: 130,
            ),
          ),
        ],
      ),
    );
  }
}
