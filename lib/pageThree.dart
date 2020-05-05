import 'package:flutter/material.dart';

class Page3 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: Text('Page 3')
      ),
      body: Center(
        child: RaisedButton(
        onPressed: (){
          Navigator.pop(context);
            },
            child: Text('3 Go Back To Main Page')
          )
        ) 
      );
  }
}