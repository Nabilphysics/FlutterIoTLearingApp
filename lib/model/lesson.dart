class Lesson {

  int classNo;
  String pageRoute;
  String content;
  String classHeading;
  String classTopics1;
  String classTopics2;
  String classTopics3;
  String classTopics4;
  Lesson(
      {this.classNo, this.content,this.pageRoute,this.classHeading,this.classTopics1,this.classTopics2,this.classTopics3,this.classTopics4});
}
List getLessons() {
  return [
    Lesson(
        classNo : 1,
        pageRoute :'class',
        classHeading: "Introduction",
        classTopics1: "What is IoT and its Use ?",
        classTopics2: "ESP32 and Its board description",
        classTopics3: "ESP32 Features",
        classTopics4: "ESP32 Modules",
        content:
        "content"),
    Lesson(
        classNo: 2,
        pageRoute :"class",
        classHeading: "Installation",
        classTopics1: "IDE & Programming Language",
        classTopics2: "ESP32 with Arduino",
        classTopics3: "VS Code with Platform IO",
        classTopics4: "Test with LED Blinking",
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
  Lesson(
  classNo: 3,
  classHeading: "",
  classTopics1: "Basic Programming Options",
  classTopics2: "GPIO Input & Output",
  classTopics3: "Toggle LED",
  classTopics4: "Serial Communication",
  content:"This is a content of class 3",
  ),
    Lesson(
      classNo: 4,
      classHeading: "",
      classTopics1: "LED Output & Button Input with Serial",
      classTopics2: "Button Debounce",
      classTopics3: "Control LED with Serial",
      classTopics4: "ESP32 Built-in Touch Sensor",
      content:"This is a content of class 11",
    ),
    Lesson(
      classNo: 5,
      classHeading: "",
      classTopics1: "WiFi Scan",
      classTopics2: "WiFi Connect",
      classTopics3: "WiFi AP",
      classTopics4: "Webserver to Control LED",
      content:"This is a content of class 5",
    ),
    Lesson(
      classNo: 6,
      classHeading: "",
      classTopics1: "WiFi Station",
      classTopics2: "WiFi Webserver",
      classTopics3: "Captive Portal",
      classTopics4: "WiFi Manager & Smart Config",
      content:"This is a content of class 11",
    ),
    Lesson(
      classNo: 7,
      //classHeading: "",
      classTopics1: "Analog to Digital Converter",
      classTopics2: "ADC Read",
      classTopics3: "Voltage Read",
      classTopics4: "Reading Weather Info from API",
      content:"This is a content of class 11",
    ),
    Lesson(
      classNo: 8,
      //classHeading: "",
      classTopics1: "MQTT",
      classTopics2: "Project: IoT Switch",
      classTopics3: "Project: Bluetooth Serial LED Control",
      classTopics4: "Motor Driver Control",
      content:"This is a content of class 11",
    ),
  ];
}
