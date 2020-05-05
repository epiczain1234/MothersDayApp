import 'package:flutter/material.dart';

// reuse this accross the pages
class Page1 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return  Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Page 1')
      ),
      body: Stack(
        children: <Widget>[

          Align(
            child: Card(
              child: Image.asset('videos/sample.jpg',
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0))
              )
            ) ,
            alignment: Alignment.topCenter,
          ),
          Align(
            child: Card(
              child: Text('Booty'),

            )
          )
        
        ],
      ),
        
      );
  }
}