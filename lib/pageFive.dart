import 'package:flutter/material.dart';

class Page5 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: Text('Page 5')
      ),
      body: Center(
        child: RaisedButton(
        onPressed: (){
          Navigator.pop(context);
            },
            child: Text(' 5 Go Back To Main Page')
          )
        ) 
      );
  }
}