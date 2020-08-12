//https://github.com/shubie/Beautiful-List-UI-and-detail-page/blob/master/lib/main.dart
//https://stackoverflow.com/questions/44729512/flutter-push-and-get-value-between-routes
import 'package:iot_learning/model/lesson.dart';
import 'package:flutter/material.dart';
import 'package:iot_learning/model/another_page.dart';
import 'package:iot_learning/model/thirdpage.dart';
import 'package:iot_learning/model/webview.dart';
import 'package:iot_learning/model/class1.dart';
import 'package:iot_learning/model/class2.dart';
import 'package:iot_learning/model/class3.dart';
import 'package:iot_learning/model/class4.dart';
import 'package:iot_learning/model/class5.dart';
import 'package:onesignal/onesignal.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'dart:async';
//import 'package:iot_learning/detail_page.dart';
const String testDevice ="";
bool _adShown;
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IoT Learning Free',
      theme: new ThemeData(
          primaryColor: Color.fromRGBO(58, 66, 86, 1.0), fontFamily: 'Raleway'),
      home: new ListPage(title: 'IoT Learning'),
      initialRoute: '/',
      routes: {
        // When we navigate to the "/" route, build the FirstScreen Widget
        //'/': (context) => ListPage(),
        // When we navigate to the "/second" route, build the SecondScreen Widget
        '1':(context) => Class1(),
        '2':(context) => Class2(),
        '3':(context) => Class3(),
        '4':(context) => Class4(),
        '5':(context) => Class5(),
        //'2':(context) => WebViewExample(),
      },

    );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  ListPageState createState() => ListPageState();
}

class ListPageState extends State<ListPage> {
  BannerAd bannerAd;
  List lessons;
  Timer timer;
  InterstitialAd _interstitialAd;
  String _debugLabelString = "false";
  ListPageState() {
    timer = new Timer(const Duration(milliseconds: 10000), () {
      setState(() {
        /*createInterstitialAd()
          ..load()
          ..show();*/
      });
    });
  }
  final MobileAdTargetingInfo targetingInfo = new MobileAdTargetingInfo(
    testDevices: <String>[],
    keywords: <String>["nothing"],
    childDirected: false,
  );
  BannerAd createBannerAd(){
    return new BannerAd(
      adUnitId:  BannerAd.testAdUnitId,
      size:  AdSize.banner,
      listener: (MobileAdEvent event) {
        if (event == MobileAdEvent.loaded) {
          _adShown = true;
          setState((){
          });
        } else if (event == MobileAdEvent.failedToLoad) {
          _adShown = false;
          setState((){
          });
        }
      },
    );
  }

  InterstitialAd createInterstitialAd(){
    return new InterstitialAd(
        adUnitId: InterstitialAd.testAdUnitId,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event){
          print("Interstatial event: $event");
        }
    );
  }
  @override
  void initState() {
    lessons = getLessons();
    super.initState();
    initPlatformState();
    FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);
    _adShown = false;
    bannerAd = createBannerAd()
      ..load()
      ..show();
    }
  @override
  void dispose(){
    super.dispose();
    bannerAd?.dispose();
    _interstitialAd.dispose();
    //_timer.cancel();
  }
  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    if (!mounted) return;
    var settings = {
      OSiOSSettings.autoPrompt: false,
      OSiOSSettings.promptBeforeOpeningPushUrl: true
    };

    // NOTE: Replace with your own app ID from https://www.onesignal.com
    await OneSignal.shared
        .init("xxxxxxxxxxxxxxxxxx", iOSSettings: settings);

    OneSignal.shared
        .setInFocusDisplayType(OSNotificationDisplayType.notification);
  }


  @override
  Widget build(BuildContext context) {
    List<Widget> fakeBottomButtons = new List<Widget>();
    fakeBottomButtons.add(new Container(
      height: 40.0,
    ));
    ListTile makeListTile(Lesson lesson) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          leading: Container(
            padding: lesson.classNo > 9 ? EdgeInsets.only(right: 3.0) : EdgeInsets.only(right: 9.5),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: Text(
              'Class ${lesson.classNo}',
              style: TextStyle(color: Colors.green),
            ),
          ),
        /*  title: Text(
            lesson.classHeading,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),*/
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

          subtitle: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: RichText(
                        text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: '- ',
                            style: TextStyle(
                                color:  Colors.yellowAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0)),
                        TextSpan(text: lesson.classTopics1),
                      ],
                    )),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RichText(
                        text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: '- ',
                            style: TextStyle(
                                color: Colors.yellowAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0)),
                        TextSpan(text: lesson.classTopics2),
                      ],
                    )),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RichText(
                        text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: '- ',
                            style: TextStyle(
                                color: Colors.yellowAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0)),
                        TextSpan(text: lesson.classTopics3),
                      ],
                    )),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RichText(
                        text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: '- ',
                            style: TextStyle(
                                color: Colors.yellowAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0)),
                        TextSpan(text: lesson.classTopics4),
                      ],
                    )),
                  ),
                ],
              ),
            ],
          ),

          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
           onTap: () {
             Navigator.pushNamed(context, lesson.classNo.toString());

           /* Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Another_page()));*/
          },
        );

    Card makeCard(Lesson lesson) => Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 5.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: makeListTile(lesson),
          ),
        );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(lessons[index]);
        },
      ),
    );

    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {
            Navigator.push(context, new MaterialPageRoute(
                builder: (BuildContext context) => new WebViewExample(urls: "https://www.github.com/Nabilphysics",appBarHeading: "git",),
           //WebViewExample(urls: "www.cruxbd.com",);
            ));
            },
        )
      ],
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: makeBody,
      persistentFooterButtons: _adShown? fakeBottomButtons:null,
      //persistentFooterButtons: fakeBottomButtons,
    );
  }
}
