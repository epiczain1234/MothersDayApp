import 'package:flutter/material.dart';

class Page1 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: Text('Page 1')
      ),
      body: Center(
        child: RaisedButton(
        onPressed: (){
          Navigator.pop(context);
            },
            child: Text('Go Back To Main Page')
          )
        ) 
      );
  }
}