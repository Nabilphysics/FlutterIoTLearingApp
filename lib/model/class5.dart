import 'package:flutter/material.dart';
import 'package:iot_learning/syntax_highlighter.dart';
import 'package:flutter/gestures.dart';
import 'package:iot_learning/model/webview.dart';
import 'package:photo_view/photo_view.dart';
import 'package:iot_learning/model/pdfViewer.dart';
import 'package:iot_learning/model/code.dart';
import'package:iot_learning/model/text.dart';
class Class5 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Widget> fakeBottomButtons = new List<Widget>();
    fakeBottomButtons.add(new Container(
      height: 40.0,
    ));

    final topAppBar = AppBar(
      elevation: 0.5,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text('Class 5'),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      persistentFooterButtons: fakeBottomButtons,
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          //-------------------------WiFi Scan Start------------------------------------------------------
          Text('WiFi Scan',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),
          Text(cls5_wifi_scan_text,
            style: TextStyle(fontSize: 18.0, color: Colors.white),
            textAlign: TextAlign.justify,
          ),

          Text('Code :',style: TextStyle(fontSize: 20.0, color: Colors.amberAccent),),
          Card(
            elevation: 1.0,
            margin: new EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
            child: Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
              child:  RichText(
                text: TextSpan(
                    style:
                    const TextStyle(fontFamily: 'monospace', fontSize: 16.0),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Github Link\n',
                        style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context, new MaterialPageRoute(
                              builder: (BuildContext context) => new WebViewExample(urls: "https://github.com/Nabilphysics/esp32_IoT_short_course_CRUX/blob/master/IoT_Short_Couse_Code/class5_wifi_scan.ino",appBarHeading: "WiFi Scan",),
                            ));
                          },
                      ),
                      DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle())
                          .format(cls5_wifi_scan_code),
                    ]),
              ),
            ),
          ),


          //-------------------------WiFi Scan END------------------------------------------------------

          //-------------------------WiFi Connect Start------------------------------------------------------
          Text('WiFi Connect',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),
          Text(cls5_wifi_connect_text,
            style: TextStyle(fontSize: 18.0, color: Colors.white),),

          Text('Code :',style: TextStyle(fontSize: 20.0, color: Colors.amberAccent),),
          Card(
            elevation: 1.0,
            margin: new EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
            child: Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
              child:  RichText(
                text: TextSpan(
                    style:
                    const TextStyle(fontFamily: 'monospace', fontSize: 16.0),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'See in Github\n',
                        style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context, new MaterialPageRoute(
                              builder: (BuildContext context) => new WebViewExample(urls: "https://github.com/Nabilphysics/esp32_IoT_short_course_CRUX/blob/master/IoT_Short_Couse_Code/class5_wifi_connect.ino",appBarHeading: "WiFi Connect",),
                            ));
                          },
                      ),

                      DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle())
                          .format(cls5_wifi_connect_code),
                    ]),
              ),
            ),
          ),
//-------------------------WiFi Connect END---------------------------------------------------------------

//-------------------------WiFi AP/Hotspot Start---------------------------------------------------------------
          Text('\nWiFi Access Point',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),

          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Also known as WiFI AP or Hotspot.To Create a WiFi Hotspot using ESP32 see code below.',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                TextSpan(
                  text: '\nTypes of Wireless Network\n',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://commotionwireless.net/docs/cck/networking/types-of-wireless-networks/",appBarHeading: "Types of Wireless Network",),
                      ));
                    },
                ),
              ],
            ),
          ),
          Text('Code :',style: TextStyle(fontSize: 20.0, color: Colors.amberAccent),),
          Card(
            elevation: 1.0,
            margin: new EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
            child: Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
              child:  RichText(
                text: TextSpan(
                    style:
                    const TextStyle(fontFamily: 'monospace', fontSize: 16.0),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'See in Github\n',
                        style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context, new MaterialPageRoute(
                              builder: (BuildContext context) => new WebViewExample(urls: "https://github.com/Nabilphysics/esp32_IoT_short_course_CRUX/blob/master/IoT_Short_Couse_Code/class5_wifi_hotspot.ino",appBarHeading: "WiFi Hotspot",),
                            ));
                          },
                      ),

                      DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle()).format(cls5_wifi_hotspot),
                    ]),
              ),
            ),
          ),

//-------------------------WiFi AP End---------------------------------------------------------------

//-------------------------Webserver to Control LED Start---------------------------------------------------------------
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Webserver to Control LED',
                  style: new TextStyle(fontSize: 22.0, color: Colors.greenAccent),
                ),
                TextSpan(
                  text: '\nNow we ll create a WiFi Hotspot and Webserver to Control LED. So no wifi router connection will be needed. See link below',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                TextSpan(
                  text: '\nESP32 Webserver to Control LED by Rui Santos\n',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://randomnerdtutorials.com/esp32-access-point-ap-web-server/",appBarHeading: "ESP32 Webserver",),
                      ));
                    },
                ),
              ],
            ),
          ),

//-------------------------Webserver to Control LED End---------------------------------------------------------------

        ],
      ),
    );
  }
}


