import 'video_items.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class videoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.black87,
        automaticallyImplyLeading: false,
        title: Text('Exercise video player'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0,20.0,0,0),
            child: Center(
              child: Text('1.Ab Wheel Exercise',style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),),
            ),
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://thumbs.dreamstime.com/videothumb_large12766/127668320.mp4'),
            looping: false,
            autoplay: true,
          ),
          Center(
            child: Text('2.Sitting Ab Wheel',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontStyle: FontStyle.italic,
            ),),
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://thumbs.dreamstime.com/videothumb_large12720/127202515.mp4'),
            looping: false,
            autoplay: true,
          ),
          Center(
            child: Text('3.Leg Raise',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontStyle: FontStyle.italic,
            ),),
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://thumbs.dreamstime.com/videothumb_large12766/127668320.mp4'),
            looping: false,
            autoplay: true,
          ),
          Center(
            child: Text('4.Straight Leg Raises',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontStyle: FontStyle.italic,
            ),),
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://thumbs.dreamstime.com/videothumb_large12720/127200181.mp4'),
            looping: false,
            autoplay: true,
          ),
          Center(
            child: Text('5.Plank',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontStyle: FontStyle.italic,
            ),),
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://thumbs.dreamstime.com/videothumb_large12720/127201753.mp4'),
            looping: true,
            autoplay: true,
          ),
        ],
      ),
    );
  }
}
