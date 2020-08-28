import 'dart:io';
import 'dart:math' as math;

import '../animations/bottomAnimation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'azkerScreen.dart';
import 'khatam.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  AnimationController animationController;
  final double maxSlide = 300.0;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
  }

  void toggle() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();

  bool _canBeDragged;

  void _onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = animationController.isDismissed;
    bool isDragCloseFromRight = animationController.isCompleted;
    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta = details.primaryDelta / maxSlide;
      animationController.value += delta;
    }
  }

  void _onDragEnd(DragEndDetails details) {
    //I have no idea what it means, copied from Drawer
    double _kMinFlingVelocity = 365.0;

    if (animationController.isDismissed || animationController.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() >= _kMinFlingVelocity) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;

      animationController.fling(velocity: visualVelocity);
    } else if (animationController.value < 0.5) {
      animationController.reverse();
    } else {
      animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    var mainScreen = Container(
        color: Colors.blueGrey,
        child: Stack(
          children: <Widget>[
            Calligraphy(),
            QuranRail(),
            Center(
              child: SingleChildScrollView(
           
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
//                  SizedBox(height: height * 0.05),
//                SurahBtn(),
//                SizedBox(height: height * 0.03),
//                SajdaBtn(),
                      Padding(
                        padding: const EdgeInsets.only(left:30,right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                InkWell(
                                  onTap: () => Navigator.pushNamed(context, '/surahIndex'),

                                  child: Container(
                                    width: 100,
                                    height: 80,
                                    child:  Image.asset('assets/mo.png', height: 50,width: 50,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text("القرآن الكريم"),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/sajda');
                                  },

                                  child: Container(
                                    width: 100,
                                    height: 80,
                                    child:  Image.asset('assets/sa.png', height: 50,width: 50,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text("آيات السجود"),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                InkWell(
                                  onTap: () =>  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => azkerScreen()),),


                                  child: Container(
                                    width: 50,
                                    height: 80,
                                    child:  Image.asset('assets/ss.png', height: 50,width: 50,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text("أذكار"),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30,right: 30),
                          child: Row(

                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () =>   Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => doaa()),
                        ),
                                    child: Container(
                                      width: 100,
                                      height: 80,
                                      child:  Image.asset('assets/dd.png', height: 50,width: 50,),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6,left: 50),
                                    child: Text("دعاء خاتم القرآن"),
                                  )
                                ],
                              ),

                              Column(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () => Navigator.pushNamed(context, '/surahIndex'),

                                    child: Container(
                                      width: 100,
                                      height: 80,
                                      child:Icon(Icons.share,color: Colors.greenAccent,size: 30,) ,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text("مشاركة  "),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                )
              ),
            ),
            Ayat(),
          ],
        ));

    Future<bool> _onWillPop() async {
      return (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              title: new Text(
                "اغلق التطبيق",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: new Text("هل انت متأكد ؟"),
              actions: <Widget>[
                FlatButton(
                  shape: StadiumBorder(),
                  color: Colors.white,
                  child: new Text(
                    "نعم",
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () {
                    exit(0);
                  },
                ),
                FlatButton(
                  shape: StadiumBorder(),
                  color: Colors.white,
                  child: new Text(
                    "لا",
                    style: TextStyle(color: Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          )) ??
          false;
    }

    return WillPopScope(
      onWillPop: _onWillPop,
      child: GestureDetector(
        onHorizontalDragStart: _onDragStart,
        onHorizontalDragUpdate: _onDragUpdate,
        onHorizontalDragEnd: _onDragEnd,
        behavior: HitTestBehavior.translucent,
        child: AnimatedBuilder(
          animation: animationController,
          builder: (context, _) {
            return Material(
              color: Colors.grey[700],
              child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset:
                        Offset(maxSlide * (animationController.value - 1), 0),
                    child: Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(
                              math.pi / 2 * (1 - animationController.value)),
                        alignment: Alignment.centerRight,
                        child: MyDrawer()),
                  ),
                  Transform.translate(
                    offset: Offset(maxSlide * animationController.value, 0),
                    child: Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(-math.pi / 2 * animationController.value),
                        alignment: Alignment.centerLeft,
                        child: mainScreen),
                  ),
                  Positioned(
                    top: 4.0 + MediaQuery.of(context).padding.top,
                    left: width * .85 + animationController.value * maxSlide,
                    child: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: toggle,
                      color: Colors.white,
                    ),
                  ),
//                  Positioned(
//                      top: height * 0.13,
//                      left: width * 0.04 +
//                          animationController.value *
//                              MediaQuery.of(context).size.width,
//                      width: MediaQuery.of(context).size.width,
//                      ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.835,
      height: double.infinity,
      child: Material(
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.blueGrey,

            ),
            DrawerCalligraphy(),
           //  DrawerAppName(),

            DrawerInfo(),

          ],
        ),
      ),
    );
  }
}

class DrawerInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(

        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.fromLTRB(0, height * 0.22, 0, height * 0.3),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MetaData(),

            MetaDataInfo(),



          ],
        ),
      ),
    );
  }
}



class MetaData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle st= TextStyle(color: Colors.yellow,fontSize: 18,fontWeight: FontWeight.bold);

    return Directionality(
     textDirection: TextDirection.rtl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("عدد السور ",style: st,),
          Text("عدد الأيات ",style: st,),
          Text("عدد الأحذاب ",style: st,),
          Text("  آيات الساجده ",style: st,),
          Text("السور المكيه ",style: st,),
          Text("السور المدنيه",style: st,),
          Text("عدد الأجزاء",style: st,),

        ],
      ),
    );
  }
}

class MetaDataInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle st= TextStyle(color: Colors.yellow,fontSize: 18,fontWeight: FontWeight.bold);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text("114",style: st,),
        Text("6,236",style: st,),
        Text("60",style: st,),
        Text("15",style: st,),
        Text("86",style: st,),
        Text("28",style: st,),
        Text("30",style: st,),

      ],
    );
  }
}

class DrawerCalligraphy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Positioned(
        top: height * 0.07,
        right: width * 0.25,

        child: Image.asset(
          "assets/grad_logo.png",
          height: height * 0.15,
        ));
  }
}

class DrawerAppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Positioned(
      left: width * 0.03,
      top: height * 0.05,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Text(
            " القرآن الكريم",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[200],
                fontSize: height * 0.035),
          )
        ],
      ),
    );
  }
}


class Calligraphy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Positioned(
        left: width - 320,
        top: height * 0.045,
        child: Image.asset('assets/grad_logo.png', height: height * 0.28));
  }
}

class QuranRail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Positioned(
        left: width * 0,
        bottom: height * 0.0,
        height: 300,
        width: 300,
        child:
            Opacity(opacity: 0.2, child: Image.asset('assets/quranRail.png')));
  }
}

class SurahBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
TextStyle     bodyText1= TextStyle(
        fontFamily: "Sogeo", fontSize: 18, fontWeight: FontWeight.w600);
    return SizedBox(
      width: width * 0.7,
      height: height * 0.06,
      child: RaisedButton(
        shape: StadiumBorder(),
        onPressed: () => Navigator.pushNamed(context, '/surahIndex'),
        child: WidgetAnimator(
            Text("القرآن الكريم", style: bodyText1)),
        color: Color(0xffab8bcc),
      ),
    );
  }
}

class SajdaBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextStyle     bodyText1= TextStyle(
        fontFamily: "Sogeo", fontSize: 18, fontWeight: FontWeight.w600);
    return SizedBox(
      width: width * 0.7,
      height: height * 0.06,
      child: RaisedButton(
        shape: StadiumBorder(),
        onPressed: () {
          Navigator.pushNamed(context, '/sajda');
        },
        child: WidgetAnimator(
            Text("آيات الساجده", style: bodyText1)),
        color: Colors.deepPurple,
      ),
    );
  }
}

class Ayat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        baseColor: Colors.amber,
        highlightColor: Colors.yellowAccent,
        enabled: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              " قال النبي صلى الله عليه وسلم:  الماهر في القرآن مع السفرة الكرام البررة والذي يقرأ القرآن ويتتعتع فيه وهو عليه شاق له أجره مرتين  متفق على صحته عن عائشة رضي الله عنها، وهذا لفظ مسلم"
              , textAlign: TextAlign.center, style:  TextStyle(color: Colors.yellow),
            ),
            Text(
              "القرآن العظيم",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
