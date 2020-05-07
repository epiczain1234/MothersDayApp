import 'package:flutter/material.dart';

// reuse this accross the pages
class Page1 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: Text('Zain\'s Card'),
        backgroundColor: Colors.deepPurple
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(child: 
        Text('''  
      Hi Mom,
      Just Wanted to tell you that 
      I appreciate you and everything
      you do. I appreciate how 
      you work hard for us, how you cook for us
      how you care for us, and most of all:
      how much you love us. Since I appreciated
      you so much, I decided to make you this 
      App. I love you mom.  
      - Zain
        ''',
        style: TextStyle(fontSize:15,
        height: 2.0
        ),
        ),
        )
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Card(
          child: Image.asset(
            'videos/zain2.jpg',
            height: 300,
            width: 425,
            ),
            
        )
        )
        ],
      
        ) ,
        
      );
  }
}