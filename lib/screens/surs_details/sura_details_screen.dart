import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/Assets/Style.dart';
import 'package:islamy/Assets/color.dart';
import 'package:islamy/data/Models/data_Sura_List.dart';

class SuraDetailsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SuraDetailsScreen_State();
}

class SuraDetailsScreen_State extends State<SuraDetailsScreen> {
  static const String routeName = "SuraDetailsScreen";
  List<String> varses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as DataSuraList;
    if (varses.isEmpty) {
      loadSura(model.index + 1);
    }
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.primary),
        backgroundColor: AppColors.black,
        title: Text(model.NameEn, style: AppStyle.body),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/images/Soura Details Screen.png"),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(model.NameAr, style: AppStyle.body),
                ),
                SizedBox(height: 40),
                Expanded(
                  child: ListView.builder(
                    itemCount: varses.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "${varses[index]} ",
                            textAlign: TextAlign.center,
                            style: AppStyle.body,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> loadSura(int index) async {
    String SuraFile = await rootBundle.loadString("assets/files/$index.txt");
    List<String> suravarses = SuraFile.split("\n");
    varses = suravarses;
    setState(() {});
  }
}
