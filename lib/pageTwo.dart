import 'package:flutter/material.dart';

class Page2 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return  Scaffold(
    
      appBar: AppBar(
        title: Text('Ilham\'s Card'),
        backgroundColor: Colors.deepPurple
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(child: 
        Text(''' 
        To the one I loved since the day I was born
        The days I was working are that of mourn
        To the one who showed me light at my worst times
        Yelling at her is of my biggest crimes

        To the best woman I have ever known
        Her actions show that she deserves a throne
        To the one I look up to and aspire to be
        She’s shown me to never take defeat

        To the one who was there when skies were gray
        I wish you a happy mother’s day
        -Ilham Mukati
        ''',
        style: TextStyle
        (fontSize:14,
        fontStyle: FontStyle.italic,
        height: 2.0
        ),
        
        
        
        
        ),
        )
        ),
        Card(
          child: Image.asset(
            'videos/ilham2.jpg',
            height: 300,
            width: 425,
            alignment: Alignment.topCenter,
            ),
        )
        ],
      
        ) 
      );
  }
}