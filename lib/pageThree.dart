import 'package:flutter/material.dart';

class Page3 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: Text('Nabeel\'s Card'),
        backgroundColor: Colors.deepPurple
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(child: 
        Text('''  
        I love you mom. I couldn't think of all 
        the things I love about you. But, I like
        how you never force us to do anything. 
        I like eating out with you. I like how old 
        and funny you are. I like the rolls that
        you make for us.
           - Poop
        ''',
        style: TextStyle(fontSize:15,
        height: 2.5
        ),
        ),
        )
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Card(
          child: Image.asset(
            'videos/nabeel2.jpg',
            height: 400,
            width: 300,
            ),
            
        )
        )
        ],
      
        ) 
      );
  }
}