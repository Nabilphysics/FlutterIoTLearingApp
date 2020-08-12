import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final topAppBar = AppBar(
      elevation: 0.5,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text('Thirdpage'),
      /*actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],*/
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      //body: ,
    );
  }

}