




//Class 4 Text
String cls4_touch_text = 'ESP32 has 10 built-in capacitive touch sensor. We can use those sensors for input detection and implement in our various projects. In Arduino IDE we will define Touch sensors as T0, T1 , T2 and so on. Please see the block diagram of your ESP32 board to see respective GPIO pin . e.g. T0 means Touch Button 1 which is GPIO pin 4 touchRead(TOUTCH_PIN); function will return the value of Touch Pin. Usually when we touch this button value will decrease below 30 so ESP32 detects which pin has been touched. Some noise reduction technique is needed to reduce noise';
String cls4_control_led_with_serial = 'Now we ll control LED with serial monitor. When we will enter H or h led will HIGH and when we will enter L or l led will be LOW. ';

//Class 5 Text

String cls5_wifi_scan_text =
    'From ESP32 Example you will find basic demo code for WiFi scan and connect to a SSID.'
    'First it will disconnect from WiFi network if connected than it will scan . WiFi.scanNetworks() will return number of SSID available . WiFi.SSID() will return SSID and WiFi.RSSI() will return RF strength of this particular SSID.'
    'WiFi Smartconfig(not in this course but its a topics of our long course) can be used which is a modern and smart system to send wifi ssid and password to client device so we dont need to hard codded wifi ssid and password. See this link for details';
String cls5_wifi_connect_text =
    '';