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
        automaticallyImplyLeading: false,
        title: Text('Exercise video player'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://thumbs.dreamstime.com/videothumb_large12766/127668320.mp4'
            ),
            looping: false,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://thumbs.dreamstime.com/videothumb_large12720/127202515.mp4'
            ),
            looping: false,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://thumbs.dreamstime.com/videothumb_large12766/127668320.mp4'
            ),
            looping: false,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://thumbs.dreamstime.com/videothumb_large12720/127200181.mp4'
            ),
            looping: false,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://thumbs.dreamstime.com/videothumb_large12720/127201753.mp4'
            ),
            looping: true,
            autoplay: true,
          ),
        ],
      ),
    );
  }
}