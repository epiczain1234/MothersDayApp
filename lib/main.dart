import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:video_player/video_player.dart';
import 'pageOne.dart';
import 'pageTwo.dart';
import 'pageThree.dart';
import 'pageFour.dart';
import 'pageFive.dart';


void main(){
  runApp(
    new MaterialApp(
      home:BackgroundVideo(),
       routes: <String,WidgetBuilder>{
    "/pageone":(BuildContext context) => new Page1(),
    "/pagetwo":  (BuildContext context) => new Page2(),
    "/pagethree":  (BuildContext context) => new Page3(),
    "/pagefour":  (BuildContext context) => new Page4(),
    "/pagefive":  (BuildContext context) => new Page5()
      }
    )
  );
}
class BackgroundVideo extends StatefulWidget {
  @override
  _BackgroundVideoState createState() => _BackgroundVideoState();
}

class _BackgroundVideoState extends State<BackgroundVideo> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'videos/hearts.mp4')
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size?.width ?? 0,
                  height: _controller.value.size?.height ?? 0,
                  child: VideoPlayer(_controller
                  ),
                ),
              ),
            ),
            
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  child: FlatButton(
                       onPressed: (){
                         Navigator.of(context).pushNamed("/pageone");
                       },
                     padding: EdgeInsets.all(3.0),
                    child: Image.asset('videos/zain.PNG',
                    width: 100,
                    height: 100,
                    ),
                    
                    )
                    )
            ),
             Align(
            alignment: Alignment.bottomLeft,
          child: Container(
                child: FlatButton(
                       onPressed: (){
                         Navigator.of(context).pushNamed("/pagetwo");
                       },
                     padding: EdgeInsets.all(3.0),
                    child: Image.asset('videos/ilham.PNG',
                    width: 100,
                    height: 100
                    ,)
                    )
                    )
            ),
            Align(
            alignment: Alignment.bottomRight,
           child: Container(
                  child: FlatButton(
                       onPressed: (){
                         Navigator.of(context).pushNamed("/pagethree");
                       },
                     padding: EdgeInsets.all(3.0),
                    child: Image.asset('videos/nabeel.PNG',
                    width: 100,
                    height: 100
                    ,)
                    )
                    )
            ),
            Align(
            alignment: Alignment.topLeft,
           child: Container(
                  child: FlatButton(
                       onPressed: (){
                         Navigator.of(context).pushNamed("/pagefour");
                       },
                     padding: EdgeInsets.all(3.0),
                    child: Image.asset('videos/hanya.PNG',
                    width: 100,
                    height: 100
                    ,)
                    )
                    )
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
