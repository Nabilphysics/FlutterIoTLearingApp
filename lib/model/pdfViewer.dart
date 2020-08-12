import 'package:flutter_pdf_viewer/flutter_pdf_viewer.dart';
import 'package:flutter/material.dart';
class LoadUrlAsFile extends StatelessWidget {
  String pdfShowText,pdfUrl;
  double fontSize;
  LoadUrlAsFile({this.pdfShowText,this.pdfUrl,this.fontSize});
  @override
  Widget build(BuildContext context) {
    return Row(
    //crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        FlatButton(
          padding: EdgeInsets.only(left: 0.0,right:0.0,bottom: 0.0,top: 0.0),
          onPressed: () async {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('Downloading...'),
                duration: Duration(days: 5),
              ),
            );

            String filePath = await FlutterPdfViewer.downloadAsFile(
              pdfUrl,
            );

            print("filePath: '$filePath'");

            Scaffold.of(context).hideCurrentSnackBar();

            FlutterPdfViewer.loadFilePath(filePath);
          },
          child: Text(pdfShowText,style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.normal, color: Colors.blue,decoration: TextDecoration.underline),),
        )
      ],

    );

  }
}