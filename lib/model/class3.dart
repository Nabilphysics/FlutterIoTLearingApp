import 'package:flutter/material.dart';
import 'package:iot_learning/syntax_highlighter.dart';
import 'package:flutter/gestures.dart';
import 'package:iot_learning/model/webview.dart';
import 'package:photo_view/photo_view.dart';
import 'package:iot_learning/model/pdfViewer.dart';
class Class3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Widget> fakeBottomButtons = new List<Widget>();
    fakeBottomButtons.add(new Container(
      height: 40.0,
    ));

    final topAppBar = AppBar(
      elevation: 0.5,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text('Class 3'),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      persistentFooterButtons: fakeBottomButtons,
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Text('ESP32 Functionality(Programming Options)',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),
          Text('ESP32 has lots of functionality. Such as >\nInput, Output, PWM, Interrupt, WiFi AP, WiFi Scan, WiFi Connect, Web server, Bluetooth Normal, Bluetooth Low Energy (BLE), OTP, SD Card, HTTP Connection, '
              'File Server, SPI, I2C, SPIFFS, ESP NOW, DNS Server , Smart Config etc'
            'ESP32 Also support AT command if AT firmware uploaded.',
            style: TextStyle(fontSize: 18.0, color: Colors.white),
            textAlign: TextAlign.justify,
          ),

          Text('\nGPIO Input & Output :',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),
          Text('\nGPIO means general purpose input & output . Voltage level of ESP32 is 3.3V so when this pin set to HIGH than output is 3.3V and 0 when set to LOW'
              'GPIO pin of ESP32 does not support 5V. So if we want to connect 5V sensors we have to use voltage level converter.',
            style: TextStyle(fontSize: 18.0, color: Colors.white),),


          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\nGPIO Output : ',
                  style: new TextStyle(fontSize: 18.0, color: Colors.yellowAccent),
                ),
                TextSpan(
                  text: '\nGeneral Purpose Input Output (GPIO) . When HIGH output is 3.3V and 0 when LOW\n'
                      'In setup. Usually setup function contains code those are necessary for configure ESP32 Board. \n'
                      '\nStep 1 : pinMode(GPIO , OUTPUT);\n'
                      'Step 2: digitalWrite(GPIO , HIGH);\n\n'
                      'if we need delay than call delay(ms) e.g. delay(1000) means wait 1 seconds or 1000 milliseconds\n'
                      'we can use array to control multiple GPIO to create pattern output. e.g. running light\n',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),

                TextSpan(
                  text: '\nGPIO Input : ',
                  style: new TextStyle(fontSize: 18.0, color: Colors.yellowAccent),
                ),
                TextSpan(
                  text: '\nWe can use button input to do any task(e.g. LED output if button is pressed)\n'
                      'Circuit : A button has to be connected with GPIO pin and GND. Input pullup should be activated.\n'
                      'Pullup means by deafult this pin is high, so we have to connect it with GND so that button input will sense.\n'
                      '\npinMode(4, INPUT_PULLUP);\n'
                        '// GPIO 4 pin as input and also internally connected with HIGH to avoid noise\n'
                      '\nOR\n'
                      '\nuint8_t pinState = digitalRead(0);\n'
                      '//uint8_t means 8 bit integer . digitalRead will read pin state(HIGH or LOW) of GPIO pin.\n'
                      '\n',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),

                TextSpan(
                  text: '\nToggle LED : \n',
                  style: new TextStyle(fontSize: 22.0, color: Colors.greenAccent),
                ),
                TextSpan(
                  text: '\nNow we will see an example to toggle LED. 30ms delay has been added to avoid multiple toggle due to mechanical error of'
                      'button.\n',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle())
                    .format('//ESP32 Toggle LED Example '
                    '// Circuit: Connect and Push Button between GPIO 13 and GND\n'
                    '//Edited by\n'
                    '//Syed Razwanul Haque Nabil, CRUX\n'
                    'int ledPin =2;\n'
                    'int buttonPin =13;\n'
                    'int buttonState = 0;\n'
                    'int ledState = 0;\n'
                    'void setup() {\n'
                    'pinMode(ledPin,OUTPUT);\n'
                    'pinMode(buttonPin, INPUT_PULLUP);\n'
                    '}\n'
                    '\nvoid loop() {\n'
                    'int reading = digitalRead(buttonPin);  // Read Pin State\n'
                    'if(reading != buttonState ){\n'
                    ' delay(30); //debounce \n'
                    'buttonState = reading;\n'
                    'if(buttonState == LOW){ \n'
                    'ledState = !ledState;\n'
                    '}\n'
                    'digitalWrite(ledPin, ledState);\n'
                    '}\n'
                    '}\n'
                ),

                TextSpan(
                  text: '\nSerial Commuication : \n',
                  style: new TextStyle(fontSize: 22.0, color: Colors.greenAccent),
                ),
                TextSpan(
                  text: '\nIt is used for communication between the ESP and a computer or other devices. All Arduino boards/ESP have at least one'
                      ' serial port (also known as a UART or USART): Serial. It communicates on digital pins 0 (RX) and 1 (TX) as well as with the'
                      ' computer via USB. Thus, if you use these functions, you cannot also use pins 0 and 1 for digital input or output.'
                    'You can use the Arduino environment’s built-in serial monitor to communicate with an Arduino board. Click the serial monitor button in the toolbar and select the same baud rate used in the call to begin().'
                      '\n',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                TextSpan(
                  text: '\nSee More',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://www.arduino.cc/reference/en/language/functions/communication/serial/",appBarHeading: "Serial Communication",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nDifference between Serial.Write() & Serial.Print()',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://arduino.stackexchange.com/questions/10088/what-is-the-difference-between-serial-write-and-serial-print-and-when-are-they",appBarHeading: "Serial Communication",),
                      ));
                    },
                ),
                //https://www.arduino.cc/reference/en/language/functions/communication/serial/


                //
            ],
            ),
          ),


        ],
      ),
    );
  }
}


