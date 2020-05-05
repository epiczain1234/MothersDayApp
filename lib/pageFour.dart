import 'package:flutter/material.dart';

class Page4 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: Text('Page 4')
      ),
      body: Center(
        child: RaisedButton(
        onPressed: (){
          Navigator.pop(context);
            },
            child: Text('4 Go Back To Main Page')
          )
        ) 
      );
  }
}