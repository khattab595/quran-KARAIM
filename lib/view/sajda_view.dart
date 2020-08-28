import '../animations/bottomAnimation.dart';
import '../controller/quranAPI.dart';
import '../customWidgets/backBtn.dart';
import '../customWidgets/flare.dart';
import '../customWidgets/loadingShimmer.dart';
import '../view/sajdaAyahs_view.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Sajda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextStyle     bodyText1= TextStyle(
        fontFamily: "Sogeo", fontSize: 18, fontWeight: FontWeight.w600);

    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: <Widget>[
            FutureBuilder(
              future: QuranAPI().getSajda(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return LoadingShimmer(
                    text: "Sajdas",
                  );
                } else {
                  return Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(8.0),
                    margin: EdgeInsets.fromLTRB(0, height * 0.2, 0, 0),
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Color(0xffee8f8b),
                          height: 2.0,
                        );
                      },
                      itemCount: snapshot.data.sajdaAyahs.length,
                      itemBuilder: (context, index) {
                        return WidgetAnimator(
                          ListTile(
                            leading: Text(
                              "${snapshot.data.sajdaAyahs[index].sajdaNumber}",
                              style: bodyText1,
                            ),


                            title: Text(
                              "${snapshot.data.sajdaAyahs[index].surahName}",
                              style: bodyText1,
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SajdaAyah(
                                            surahName: snapshot.data
                                                .sajdaAyahs[index].surahName,
                                            surahEnglishName: snapshot
                                                .data
                                                .sajdaAyahs[index]
                                                .surahEnglishName,
                                            englishNameTranslation: snapshot
                                                .data
                                                .sajdaAyahs[index]
                                                .englishNameTranslation,
                                            juz: snapshot.data.sajdaAyahs[index]
                                                .juzNumber,
                                            manzil: snapshot.data
                                                .sajdaAyahs[index].manzilNumber,
                                            ruku: snapshot.data
                                                .sajdaAyahs[index].rukuNumber,
                                            sajdaAyahs: snapshot
                                                .data.sajdaAyahs[index].text,
                                            sajdaNumber: snapshot.data
                                                .sajdaAyahs[index].sajdaNumber,
                                            revelationType: snapshot
                                                .data
                                                .sajdaAyahs[index]
                                                .revelationType,
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
            BackBtn(),
            Title(),
            RozaImage(),
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
      ),
    );
  }
}

class RozaImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.3,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Image.asset(
          'assets/roza.png',
          height: MediaQuery.of(context).size.height * 0.35,
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle headline1= TextStyle( fontFamily: 'Sogeo', fontSize:20, fontWeight: FontWeight.w600);

    return Positioned(
      top:50,
      left: 100,
      child: Shimmer.fromColors(
        baseColor: Colors.blue,
        highlightColor: Colors.amberAccent,
        enabled: true,
        child: Text(
          "فهرس آيات السجود",
          style:  headline1,
        ),
      ),
    );
  }
}
