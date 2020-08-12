import 'package:flutter/material.dart';
import 'package:iot_learning/syntax_highlighter.dart';
import 'package:iot_learning/main.dart';
import 'package:iot_learning/model/lesson.dart';
import 'package:flutter/services.dart' show rootBundle;
class Another_page extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    String code = "int a = 5;\nint b=6;\nvoid main(){\nfor (int i=0;i<10;i++){\n}";
    final topAppBar = AppBar(
      elevation: 0.5,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text('Anotherpage'),
    );
    final body = Scrollbar(

      child: Padding(

        padding: const EdgeInsets.all(8.0),
        child: Column(
              children: <Widget>[

                RichText(
                    text: TextSpan(
                        style: const TextStyle(
                            fontFamily: 'monospace', fontSize: 20.0),
                        children: <TextSpan>[

                          DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle()).format(code),
                          DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle()).format(code),
                          DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle()).format(code),
                          DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle()).format(code),
                          DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle()).format(code),
                          DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle()).format(code),
                          DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle()).format(code),
                          DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle()).format(code),
                          DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle()).format(code),
                          DartSyntaxHighlighter(SyntaxHighlighterStyle.darkThemeStyle()).format(code),


                        ])),

              ],
            ),


      ),
    );
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: body ,
    );


  }

}