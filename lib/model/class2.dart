import 'package:flutter/material.dart';
import 'package:iot_learning/syntax_highlighter.dart';
import 'package:flutter/gestures.dart';
import 'package:iot_learning/model/webview.dart';
import 'package:photo_view/photo_view.dart';

class Class2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Widget> fakeBottomButtons = new List<Widget>();
    fakeBottomButtons.add(new Container(
      height: 40.0,
    ));

    final topAppBar = AppBar(
      elevation: 0.5,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text('Class 2'),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      persistentFooterButtons: fakeBottomButtons,
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Text('IDE & Programming Language',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),
          Text('There are several supported IDE(Integrated Development Environment) and programming language for ESP32 based IoT development',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
              textAlign: TextAlign.justify,
          ),
          Text('\n• Arduino IDE with the ESP32 Arduino Core\n• ESP Easy–developed by home automation enthusiasts\n• Espressif IoT Development Framework – official Espressif development framework for ESP32'
              '\n• MicroPython'
              '\n• Espruino – JavaScript SDK and firmware closely emulating Node.js'
              '\n• Lua RTOS for ESP32'
              '\n• Mongoose OS – an operating system for connected products on microcontrollers'
              '\n• mruby for the ESP32'
              '\n• NodeMCU – Lua-based firmware'
              '\n• PlatformIO Ecosystem and IDE'
              '\n• Pymakr IDE – IDE designed for use with Pycom devices'
              '\n• Simba Embedded Programming Platform'
              '\n• Whitecat Ecosystem Blockly Based Web IDE'
              '\n• Zerynth – Python for IoT and microcontrollers'
              '\n\n In this course we are going to use Arduino IDE with ESP32 Core',
            style: TextStyle(fontSize: 18.0, color: Colors.white),
            //textAlign: TextAlign.justify,
          ),
          Text('\nReference & See More :',style: TextStyle(fontSize: 20.0, color: Colors.amberAccent),),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Arduino IDE',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://en.wikipedia.org/wiki/Arduino#IDE",appBarHeading: "Arduino IDE",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nESP Easy',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://en.wikipedia.org/wiki/ESP_Easy",appBarHeading: "Wikipedia IoT",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nMicropython',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://en.wikipedia.org/wiki/MicroPython",appBarHeading: "MicroPython",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nESP IDF',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://docs.espressif.com/projects/esp-idf/en/latest/",appBarHeading: "ESP-IDF",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nPlatformIO IDE',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "http://docs.platformio.org/en/latest/ide/vscode.html",appBarHeading: "PlatformIO IDE",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nMongoose OS',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://en.wikipedia.org/wiki/Mongoose_OS",appBarHeading: "Mongoose OS",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nEspruino',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://en.wikipedia.org/wiki/Espruino",appBarHeading: "Espruino",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nmruby',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://en.wikipedia.org/wiki/Mruby",appBarHeading: "mruby",),
                      ));
                    },
                ),
              ],
            ),
          ),


          Text('\nESP32 with Arduino:\n',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),
          Text('The open-source Arduino Software (IDE) makes it easy to write code and upload it to the board. It runs on Windows, Mac OS X, and Linux. The environment is written in Java and based on Processing and other open-source software. ',
            style: TextStyle(fontSize: 18.0, color: Colors.white),),
          Text('\nInstallation:',style: TextStyle(fontSize: 20.0, color: Colors.amberAccent),),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\n1) Install Arduino IDE from this link',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  recognizer: new TapGestureRecognizer()
                ),
                TextSpan(
                  text: '\nhttps://www.arduino.cc/en/Main/Donate',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://www.arduino.cc/en/Main/Donate",appBarHeading: "Arduino IDE",),
                      ));
                    },
                ),
                TextSpan(
                    text: '\n2) Install CP210X Driver if needed',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                TextSpan(
                  text: '\nhttps://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers",appBarHeading: "CP210X Driver",),
                      ));
                    },
                ),

                TextSpan(
                    text: '\n3) Open Arduino IDE > File > Preferences > Additional Board Manager URLs > Copy and Paste below link',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                TextSpan(
                  text: '\nhttps://dl.espressif.com/dl/package_esp32_index.json',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://dl.espressif.com/dl/package_esp32_index.json",appBarHeading: "CP210X Driver",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nif you have installed ESP8266 previously use separate above link with comma.',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ],
            ),
          ),

          Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 300.0,
              child: PhotoView(
                imageProvider: AssetImage("assets/arduino_install_1.png"),
              )
          ),

          Text('4) Tools > Boards > Boards Manager > “Type ESP32” > Install ',style: TextStyle(fontSize: 18.0, color: Colors.white),),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 300.0,
              child: PhotoView(
                imageProvider: AssetImage("assets/arduino_install_2.png"),
              )
          ),

          Text('VS Code with Platform IO:',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: '\nVisual Studio code with PlatformIO is another great way to develop ESP32 based projects. It is the next-generation integrated development environment for IoT.'
                  ' PlatformIO has code autocompletion, code linting, multi-platform build system, advanced project management. Please note that PlatformIO has different work-flow than Arduino IDE.',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),

                ),
                TextSpan(
                  text: '\nhttp://docs.platformio.org/en/latest/ide/vscode.html',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "http://docs.platformio.org/en/latest/ide/vscode.html",appBarHeading: "PlatformIO",),
                      ));
                    },
                ),
              ],
            ),
          ),

          Text('\nTest with Simple LED Blinking Code',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\nNow we will upload our first code. Remember voltage level of ESP32 is 3.3V. If you wanna connect any 5V sensors or peripheral you will need a voltage level converter. We will write a simple code that will blink a LED.'
                  ' Open Arduino IDE and from Tools menu select your correct ESP32 Board and Port Number.'
                  'Selection of board will vary according to your board manufacturer. Now attach a LED'
                  'series with a 1K or similar ragistor to the pin of ESP32 board. You can follow below link.',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                TextSpan(
                  text: '\nhttps://randomnerdtutorials.com/esp32-dual-core-arduino-ide/',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://randomnerdtutorials.com/esp32-dual-core-arduino-ide/",appBarHeading: "ESP32 Blink",),
                      ));
                    },
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 300.0,
              child: PhotoView(
                imageProvider: AssetImage("assets/esp32_led.png"),
              )
          ),

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
                        style: new TextStyle(fontSize: 18.0, color: Colors.amberAccent),
                      ),
                      DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle())
                          .format('// This forward slash for comment '
                          'int LED_PIN = 2;//Pin You Want to use for LED\n'
                          'void setup() {\n'
                          '// initialize digital pin LED_BUILTIN as an output.\n'
                          'pinMode(LED_PIN, OUTPUT);\n'
                          '}\n'
                          '// the loop function runs over and over again forever\n'
                          'void loop() {\n'
                          'digitalWrite(LED_PIN, HIGH);   // turn the LED on (HIGH is the voltage level)\n'
                          'delay(500); // Delay 500ms\n'
                          'digitalWrite(LED_PIN, LOW);// turn the LED off by making the voltage LOW\n'
                          'delay(500);\n'
                          '}\n'),


                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


