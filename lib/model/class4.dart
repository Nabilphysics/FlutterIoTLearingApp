import 'package:flutter/material.dart';
import 'package:iot_learning/syntax_highlighter.dart';
import 'package:flutter/gestures.dart';
import 'package:iot_learning/model/webview.dart';
import 'package:photo_view/photo_view.dart';
import 'package:iot_learning/model/pdfViewer.dart';
import 'package:iot_learning/model/code.dart';
import'package:iot_learning/model/text.dart';
class Class4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Widget> fakeBottomButtons = new List<Widget>();
    fakeBottomButtons.add(new Container(
      height: 40.0,
    ));

    final topAppBar = AppBar(
      elevation: 0.5,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text('Class 4'),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      persistentFooterButtons: fakeBottomButtons,
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Text('LED Output & Button Input with Serial',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),
          Text('Push Button 1 is attached with GPIO 4 and GND. Input Pullup is activated that means Input pin is connected with HIGH internally. When we press push button ESP32 will detect press as LOW One Led is connected with GPIO 2 or If your ESP32 module contains Builtin in LED you dont need to connect externally.'
              'See the below code Serial.begin(9600) means baud rate of serial communication is 9600 bit per second.'
              'Now if you press button you can see its state on the arduino IDE serial monitor.',
            style: TextStyle(fontSize: 18.0, color: Colors.white),
            textAlign: TextAlign.justify,
          ),

          Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 300.0,
              child: PhotoView(
                imageProvider: AssetImage("assets/esp32_button_led.png"),
              )
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
                              builder: (BuildContext context) => new WebViewExample(urls: "https://github.com/Nabilphysics/esp32_IoT_short_course_CRUX/blob/master/IoT_Short_Couse_Code/class4_debounce.ino",appBarHeading: "Debounce Code",),
                            ));
                          },
                      ),
                      DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle())
                          .format(cls4_led_serial),
                    ]),
              ),
            ),
          ),

          Text(cls4_control_led_with_serial,style: TextStyle(fontSize: 18.0, color: Colors.white),),
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
                        text: 'Code:\n',
                        style: new TextStyle(fontSize: 20.0, color: Colors.amberAccent),

                      ),
                      TextSpan(
                        text: 'See in Github\n',
                        style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context, new MaterialPageRoute(
                              builder: (BuildContext context) => new WebViewExample(urls: "https://github.com/Nabilphysics/esp32_IoT_short_course_CRUX/blob/master/IoT_Short_Couse_Code/class4_control_led_serial.ino",appBarHeading: "Control LED with Serial",),
                            ));
                          },
                      ),
                      DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle())
                          .format(cls4_led_control_with_serial_code),
                    ]),
              ),
            ),
          ),
          //-------------------------Button Debounce Start------------------------------------------------------
          Text('Button Debounce',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),
          Text('Switch debouncing is one of those things you generally have to live with when playing with switches and digital circuits. If you want to input a manual switch signal into a digital circuit you will need to debounce the signal so a single press does not appear like multiple presses. Image below shows the actual scenario taken from oscilloscope and switch.\n',
            style: TextStyle(fontSize: 18.0, color: Colors.white),),

          Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 300.0,
              child: PhotoView(
                imageProvider: AssetImage("assets/button_bounce.png"),
              )
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
                              builder: (BuildContext context) => new WebViewExample(urls: "https://github.com/Nabilphysics/esp32_IoT_short_course_CRUX/blob/master/IoT_Short_Couse_Code/class4_debounce.ino",appBarHeading: "Debounce Code",),
                            ));
                          },
                      ),

                      DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle())
                          .format(cls4_debounce),
                    ]),
              ),
            ),
          ),
//-------------------------Button Debounce END------------------------------------------------------
          Text('\nESP32 Built-in Touch Sensor',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),

          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: cls4_touch_text,
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                TextSpan(
                  text: '\nSee More about ESP32 Touch\n',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "http://www.esp32learning.com/code/esp32-capacitive-touch-example.php",appBarHeading: "ESP32 Blink",),
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
                              builder: (BuildContext context) => new WebViewExample(urls: "https://github.com/Nabilphysics/esp32_IoT_short_course_CRUX/blob/master/IoT_Short_Couse_Code/class4_esp32_touch_sensor.ino",appBarHeading: "Touch Sensor Code",),
                            ));
                          },
                      ),

                      DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle()).format(cls4_touch_code),
                    ]),
              ),
            ),
          ),

        ],
      ),
    );
  }
}


