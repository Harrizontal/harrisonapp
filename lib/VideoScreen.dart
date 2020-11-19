import 'package:flutter/material.dart';
import 'package:vimeoplayer/vimeoplayer.dart';

class VideoScreen extends StatefulWidget {

  @override
  VideoScreenState createState() => VideoScreenState();

}

class VideoScreenState extends State<VideoScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xFF15162B), //FF15162B // 0xFFF2F2F2
        appBar: MediaQuery.of(context).orientation == Orientation.portrait
            ? AppBar(
          leading: BackButton(color: Colors.white),
          title: Text('Interview with Prof Kua NUS'),
          backgroundColor: Color(0xAA15162B),
        )
            : PreferredSize(
          child: Container(
            color: Colors.green,
          ),
          preferredSize: Size(0.0, 0.0),
        ),
        body: ListView(children: <Widget>[
          VimeoPlayer(id: '478461074', autoPlay: true),
        ]));
  }

}