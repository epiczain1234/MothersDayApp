import 'package:flutter/material.dart';

class Page4 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: Text('Hanya\'s Card'),
        backgroundColor: Colors.deepPurple,
      ),
      body:Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(child: 
        Text('''  
      Happy Mother's Day Mommy❤️❤️
      I love our weekly outings, açaí bowl cravings, 
      and our nightly gossip circle😝 Your the best 
      mom in the world and I really appreciate all 
      that you do for me.Whether it’s making us lunch, 
      Taking us to and from school, Or simply driving  
      me to Aventura for no reason just because I want 
      to,you are selfless in all situations and make 
      me feel so special🥰🥰.I love you so much and 
      I hope you have a good day bestfriend😘😘.
      - Hanya
        ''',
        style: TextStyle(fontSize:15,
        height: 1.5
        
        ),
        ),
        )
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Card(
          child: Image.asset(
            'videos/hanya2.jpg',
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