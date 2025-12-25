import 'package:flutter/material.dart';
import 'package:islamy/Assets/Style.dart';
import 'package:islamy/Assets/color.dart';
import 'package:islamy/data/CustomsWedgit/Sura_Tile.dart';
import 'package:islamy/data/CustomsWedgit/recentSura.dart';
import 'package:islamy/data/Models/data_Sura_List.dart';
import 'package:islamy/data/data.dart';

class QuranTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/Background1.png") , fit: BoxFit.fill),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 190,),
            Form(child: TextFormField(
              decoration: InputDecoration(
                hint: Text("Sura Name " , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold , color: AppColors.primary)),
                prefixIcon: ImageIcon(AssetImage("assets/images/ic_quran.png") , color: AppColors.primary,),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: AppColors.primary
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.primary
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            )),
            SizedBox(height: 20,),
            Text("Most Recently" , style: TextStyle(color: Color(0xFFFFFFFF) , fontSize: 16 , fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            SizedBox(
              height: 160,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemCount: surahNamesArabic.length,
                  separatorBuilder: (context , index) {
                  return SizedBox(width: 20,);
                  },
                  itemBuilder: (context , index) {
                   return Recentsura(recntely: DataSuraList(NameAr: surahNamesArabic[index], NameEn: surahNamesEnglish[index], NumberVerses: versesCount[index], index: index));
              }),
            ),
            SizedBox(height: 10,),
            Text("Suras List" , style: TextStyle(color: Color(0xFFFFFFFF) , fontSize: 16 , fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Expanded(
                child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context , index) {
                      return SuraTile(SuraList: DataSuraList(NameAr: surahNamesArabic[index], NameEn: surahNamesEnglish[index], NumberVerses: versesCount[index], index: index),);

            }, separatorBuilder: (context , index){
              return Divider(endIndent: 44, indent: 44,);
            }, itemCount: surahNamesArabic.length))
          ],
        ),
      ),
    );
  }
}