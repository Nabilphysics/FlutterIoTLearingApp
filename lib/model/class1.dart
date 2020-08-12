import 'package:flutter/material.dart';
import 'package:iot_learning/syntax_highlighter.dart';
import 'package:flutter/gestures.dart';
import 'package:iot_learning/model/webview.dart';
import 'package:photo_view/photo_view.dart';
import 'package:iot_learning/model/pdfViewer.dart';
class Class1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      List<Widget> fakeBottomButtons = new List<Widget>();
      fakeBottomButtons.add(new Container(
        height: 40.0,
      ));

    final topAppBar = AppBar(
      elevation: 0.5,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text('Class 1'),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      persistentFooterButtons: fakeBottomButtons,
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[

          Text('What is IoT and its Use ?',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),
          Text('The Internet of Things (IoT) is the network of physical devices, vehicles, home appliances, and other items embedded with electronics, software, sensors, actuators, and connectivity which enables these things to connect and exchange data,creating opportunities for more direct integration of the physical world into computer-based systems, resulting in efficiency improvements, economic benefits, and reduced human exertions. The number of IoT devices increased 31% year-over-year to 8.4 billion in 2017 and it is estimated that there will be 30 billion devices by 2020. The global market value of IoT is projected to reach USD 7.1 trillion by 2020. IoT involves extending internet connectivity beyond standard devices, such as desktops, laptops, smartphones and tablets, to any range of traditionally dumb or non-internet-enabled physical devices and everyday objects. Embedded with technology, these devices can communicate and interact over the internet, and they can be remotely monitored and controlled.' ,
            style: TextStyle(fontSize: 18.0, color: Colors.white),
              textAlign: TextAlign.justify,
          ),
          Text('\nReference & See More :',style: TextStyle(fontSize: 20.0, color: Colors.amberAccent),),
          RichText(
            text: TextSpan(
              children: [
                    TextSpan(
                  text: 'Wikipedia',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://en.wikipedia.org/wiki/Internet_of_things",appBarHeading: "Wikipedia IoT",),
                      ));
                    },
                ),
                    TextSpan(
                      text: '\nTechtarget.com',
                      style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (BuildContext context) => new WebViewExample(urls: "https://internetofthingsagenda.techtarget.com/definition/Internet-of-Things-IoT",appBarHeading: "IoT",),
                          ));
                        },
                    ),
                    TextSpan(
                      text: '\n\nESP32 and Its board description\n',
                      style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),
                    ),

              ],
            ),
          ),
          Text('ESP32 is a series of low-cost, low-power system on a chip microcontrollers with integrated Wi-Fi and dual-mode Bluetooth. The ESP32 series employs a Tensilica Xtensa LX6 microprocessor in both dual-core and single-core variations and includes in-built antenna switches, RF balun, power amplifier, low-noise receive amplifier, filters, and power-management modules. ESP32 is created and developed by Espressif Systems, a Shanghai-based Chinese company, and is manufactured by TSMC using their 40 nm process. It is a successor to the ESP8266 microcontroller.\n',
            style: TextStyle(fontSize: 18.0, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 300.0,
              child: PhotoView(
                imageProvider: AssetImage("assets/esp32_block.png"),
              )
          ),
          Text('\nESP32 Features:\n',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),
          Text('Processors: \n\n• CPU: Xtensa dual-core (or single-core) 32-bit LX6 microprocessor, operating at 160 or 240 MHz and performing at up to 600 DMIPS \n• Ultra low power (ULP) co-processor\n• Memory: 520 KiB SRAM\n\nWireless connectivity:\n\n• Wi-Fi: 802.11 b/g/n\n• Bluetooth: v4.2 BR/EDR and BLE\n\nPeripheral interfaces:\n\n• 12-bit SAR ADC up to 18 channels\n• 2 × 8-bit DACs\n• 10 × touch sensors (capacitive sensing GPIOs)\n• Temperature sensor\n• 4 × SPI\n• 2 × I²S interfaces\n• 2 × I²C interfaces\n• 3 × UART\n• SD/SDIO/CE-ATA/MMC/eMMC host controller\n• SDIO/SPI slave controller\n• Ethernet MAC interface with dedicated DMA and IEEE 1588 Precision Time \n• Protocol support\n• CAN bus 2.0\n• Infrared remote controller (TX/RX, up to 8 channels)\n• Motor PWM\n• LED PWM (up to 16 channels)\n• Hall effect sensor\n• Ultra low power analog pre-amplifier\n\nSecurity:\n\n• IEEE 802.11 standard security features all supported, including WFA, WPA/WPA2 and WAPI\n• Secure boot\n• Flash encryption\n• 1024-bit OTP, up to 768-bit for customers\n• Cryptographic hardware acceleration: AES, SHA-2, RSA, elliptic curve cryptography (ECC), random number generator (RNG)\n• Power management:\n• Internal low-dropout regulator\n• Individual power domain for RTC\n• 5uA deep sleep current\nWake up from GPIO interrupt, timer, ADC measurements, capacitive touch sensor interrupt',
            style: TextStyle(fontSize: 18.0, color: Colors.white),),
          Text('\nReference:',style: TextStyle(fontSize: 20.0, color: Colors.amberAccent),),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\nWikipedia ESP32',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://en.wikipedia.org/wiki/ESP32",appBarHeading: "Wikipedia ESP32",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nesp32.net',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "http://esp32.net/",appBarHeading: "ESP32",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nmodules-boards',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://esp-idf.readthedocs.io/en/latest/hw-reference/modules-and-boards.htm",appBarHeading: "ESP32",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nacopext.com',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "http://acoptex.com/project/326/basics-project-070b-esp32-development-board-at-commands-at-acoptexcom/#sthash.pGtL5Rzm.dpbs",appBarHeading: "ESP32",),
                      ));
                    },
                ),
                //acoptex.com/project/326/basics-project-070b-esp32-development-board-at-commands-at-acoptexcom/#sthash.pGtL5Rzm.dpbs
                TextSpan(
                  text: '\nesp-wroom-32',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://www.espressif.com/en/products/hardware/esp-wroom-32/overview",appBarHeading: "ESP32",),
                      ));
                    },
                ),
              ],
            ),
          ),
          LoadUrlAsFile(pdfShowText: 'Espressif Reference Manual',pdfUrl: 'https://www.espressif.com/sites/default/files/documentation/esp32_technical_reference_manual_en.pdf',fontSize: 18.0,),
          Text('ESP32 Modules:',style: TextStyle(fontSize: 22.0, color: Colors.greenAccent),),
          Text('\nEspressif makes several single and dual core ESP32 module. Using those modules Various company produce various ESP-32 based board for easy prototyping. Those development boards includes USB communication, Power management, Display ,etc depends on manufacturer.\n',
            style: TextStyle(fontSize: 18.0, color: Colors.white),
            textAlign: TextAlign.justify,
          ),

          Text('\nSome Boards:',style: TextStyle(fontSize: 20.0, color: Colors.amberAccent),),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\nESP32 Modules & Boards',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://docs.espressif.com/projects/esp-idf/en/latest/hw-reference/modules-and-boards.html",appBarHeading: "ESP32 Boards",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nESP32 Boards with Display(Video)',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://www.youtube.com/watch?v=s12XuR7BJkw",appBarHeading: "ESP32 - Andreas Spies Video",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nESP32 Battery Powered Boards(Video)',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://www.youtube.com/watch?v=-769_YIeGmI",appBarHeading: "ESP32 - Andreas Spies Video",),
                      ));
                    },
                ),
                TextSpan(
                  text: '\nesp-wroom-32',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "https://www.espressif.com/en/products/hardware/esp-wroom-32/overview",appBarHeading: "ESP32",),
                      ));
                    },
                ),
              ],
            ),
          ),

          Text('\nModule We are Using:',style: TextStyle(fontSize: 20.0, color: Colors.amberAccent),),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\nDOIT ESP32 Devkit V1',
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue,decoration: TextDecoration.underline),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new WebViewExample(urls: "http://s.click.aliexpress.com/e/cZmbc3tQ",appBarHeading: "ESP32 Boards",),
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
                imageProvider: AssetImage("assets/esp32.png"),
              )
          ),
        ],
      ),
    );
  }
}


