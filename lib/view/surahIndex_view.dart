import '../animations/bottomAnimation.dart';
import '../controller/quranAPI.dart';
import '../customWidgets/backBtn.dart';
import '../customWidgets/flare.dart';
import '../customWidgets/loadingShimmer.dart';
import '../view/ayahs_view.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SurahIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
  TextStyle   bodyText1= TextStyle(
        fontFamily: "Sogeo", fontSize: 18, fontWeight: FontWeight.w600);
    return Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Stack(
      children: <Widget>[
          FutureBuilder(
            future: QuranAPI().getSurahList(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return LoadingShimmer(
                  text: "Surahs",
                );
              } else {
                return Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.fromLTRB(0, height * 0.2, 0, 0),
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Color(0xffee8f8b),
                        height: 2.0,
                      );
                    },
                    itemCount: snapshot.data.surahs.length,
                    itemBuilder: (context, index) {
                      return WidgetAnimator(
                        ListTile(
                          leading: Text(
                            "${snapshot.data.surahs[index].number}",
                            style: bodyText1,
                          ),

//                        trailing: Text(
//                            "${snapshot.data.surahs[index].englishNameTranslation}"),
                          title: Text(
                            "${snapshot.data.surahs[index].name}",
                            style: bodyText1,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SurahAyats(
                                          ayatsList:
                                              snapshot.data.surahs[index].ayahs,
                                          surahName:
                                              snapshot.data.surahs[index].name,
                                          surahEnglishName: snapshot
                                              .data.surahs[index].englishName,
                                          englishMeaning: snapshot
                                              .data
                                              .surahs[index]
                                              .englishNameTranslation,
                                        )));
                          },
                        ),
                      );
                    },
                  ),
                );
              }
            },
          ),
          KaabaImage(),
          BackBtn(),
          Title(),
          Flare(
            color: Color(0xfff9e9b8),
            offset: Offset(width, -height),
            bottom: -50,
            flareDuration: Duration(seconds: 17),
            left: 100,
            height: 60,
            width: 60,
          ),
          Flare(
            color: Color(0xfff9e9b8),
            offset: Offset(width, -height),
            bottom: -50,
            flareDuration: Duration(seconds: 12),
            left: 10,
            height: 25,
            width: 25,
          ),
          Flare(
            color: Color(0xfff9e9b8),
            offset: Offset(width, -height),
            bottom: -40,
            left: -100,
            flareDuration: Duration(seconds: 18),
            height: 50,
            width: 50,
          ),
          Flare(
            color: Color(0xfff9e9b8),
            offset: Offset(width, -height),
            bottom: -50,
            left: -80,
            flareDuration: Duration(seconds: 15),
            height: 50,
            width: 50,
          ),
          Flare(
            color: Color(0xfff9e9b8),
            offset: Offset(width, -height),
            bottom: -20,
            left: -120,
            flareDuration: Duration(seconds: 12),
            height: 40,
            width: 40,
          ),
      ],
    ),
        ));
  }
}

class KaabaImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.3,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Image.asset(
          'assets/kaaba.png',
          height: MediaQuery.of(context).size.height * 0.2,
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle headline1= TextStyle( fontFamily: 'Sogeo', fontSize: 30, fontWeight: FontWeight.w600);

    return Positioned(
      top: 30,
      left:100,
      child: Shimmer.fromColors(
        baseColor: Colors.lightBlue,
        highlightColor: Colors.amber,
        enabled: true,
        child: Text(
          "فهرس السور",
          style: headline1,
        ),
      ),
    );
  }
}
