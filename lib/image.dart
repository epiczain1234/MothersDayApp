import 'package:flutter/material.dart';

class ImageforUse extends StatelessWidget{
  @override 
  Widget build (BuildContext context){
    AssetImage assetImage = AssetImage("videos/sample.jpg");
    Image image = Image(
      image: assetImage,
    );
    return Container(child: image);
  }
}