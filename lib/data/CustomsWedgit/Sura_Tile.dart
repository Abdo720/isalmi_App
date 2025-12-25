import 'package:flutter/material.dart';
import 'package:islamy/data/Models/data_Sura_List.dart';

class SuraTile extends StatelessWidget {

  DataSuraList SuraList;

  SuraTile({required this.SuraList});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/img_sur_number_frame.png" , width: 52, height: 52,),
          Text("${SuraList.index + 1}" , style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),)
        ],
      ),
      title: Text("${SuraList.NameEn}",style: TextStyle(color: Color(0xFFFFFFFF) , fontSize: 18 , fontWeight: FontWeight.bold),),
      subtitle: Text("${SuraList.NumberVerses} Verses" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 14 , color: Color(0xFFFFFFFF)),),
      trailing: Text("${SuraList.NameAr}" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold , color:  Color(0xFFFFFFFF)), ),
    );
  }
}