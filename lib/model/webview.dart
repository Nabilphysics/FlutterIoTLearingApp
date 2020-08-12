import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:iot_learning/main.dart';
BannerAd bannerAd;
bool _adShown;
class WebViewExample extends StatefulWidget {

  WebViewExample({this.urls,this.appBarHeading});
 //WebViewExample({Key key, this.urls}) : super(key: key);
 String urls,appBarHeading;
  @override
  WebViewExampleState createState() => WebViewExampleState(urls, appBarHeading);
}

class WebViewExampleState extends State<WebViewExample> {
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
  //TextEditingController controller = TextEditingController();
  FlutterWebviewPlugin flutterWebviewPlugin = FlutterWebviewPlugin();
  //var urlString = "https://google.com";
  WebViewExampleState(this.urlString,this.appBarHeading);
  String urlString,appBarHeading;
  launchUrl() {
    setState(() {
     // urlString = controller.text;
      flutterWebviewPlugin.reloadUrl(urlString);
    });
  }

  @override
  void initState() {
    super.initState();

    flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged wvs) {
      print(wvs.type);
    });
    FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);
    _adShown = false;
    bannerAd = createBannerAd()
      ..load()
      ..show();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> fakeBottomButtons = new List<Widget>();
    fakeBottomButtons.add(new Container(
      height: 40.0,
    ));
    return WebviewScaffold(
      appBar: AppBar(
        title: Text(appBarHeading),
      ),
      persistentFooterButtons: fakeBottomButtons,
      url: urlString,
      withZoom: true,
      withJavascript: true,
      allowFileURLs: true,
    );
  }
}