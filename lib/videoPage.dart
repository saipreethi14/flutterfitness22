import 'package:ff/HomePage.dart';
import 'video_items.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

// here we are not changing our state
class videoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background color of screen
      backgroundColor: Color(0xFFEBD3D4),
      appBar: AppBar(
        // background color of appbar
        backgroundColor: Color(0xFF660000),
        // automatically space is given to the title
        automaticallyImplyLeading: true,

        leading: IconButton(
          //navigate from from page to other
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (Context) => Homepage()));
          },
          // icon name
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          'Exercise video player',
          style: TextStyle(fontFamily: 'Aleo', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      // displayed in list view
      body: ListView(
        children: <Widget>[
          // creates fixed sized box
          SizedBox(height: 10),
          // title center
          Center(
            child: Text(
              '1.Side Planks',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Aleo',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://dm0qx8t0i9gc9.cloudfront.net/watermarks/video/Sx6dK9lQiok4v2i0/videoblocks-a-bodybuilder-in-blue-shorts-stands-in-a-side-plank-on-a-sports-mat-and-swing-legs-at-the-city-stadium-front-view-close-up-blurred-background-man-uses-mobile-app-on-his-phone-for-training_bbo9wudsv__52d0de3a97c478a63929f8b9120fccf9__P360.mp4'),
            // related to playing of video
            looping: false,
            autoplay: true,
          ),
          // creates sized box after this
          SizedBox(height: 10),
          Center(
            child: Text(
              '2. Ab Wheel Rollouts',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Aleo',
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://assets.mixkit.co/videos/preview/mixkit-young-man-exercising-5668-large.mp4'),
            looping: false,
            autoplay: true,
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              '3. Standing Squats',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Aleo',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://assets.mixkit.co/videos/preview/mixkit-a-trainer-helps-a-woman-with-the-squats-training-23914-large.mp4'),
            looping: false,
            autoplay: true,
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              '4. Hanging Leg Raises',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Aleo',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://dm0qx8t0i9gc9.cloudfront.net/watermarks/video/Sx6dK9lQiok4v2i0/videoblocks-fit-young-man-doing-hanging-leg-raises-exercise-on-horizontal-bar-in-the-street-gym_s_c3hgf1l__f2489b9b8dc3b03e8864aff79887b169__P360.mp4'),
            looping: false,
            autoplay: true,
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              '5. Front Plank',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Aleo',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://assets.mixkit.co/videos/preview/mixkit-man-doing-plank-exercise-in-his-living-room-36813-large.mp4'),
            looping: false,
            autoplay: true,
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              '6. Lifting Large Ropes',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Aleo',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://assets.mixkit.co/videos/preview/mixkit-man-doing-rope-exercise-730-large.mp4'),
            autoplay: true,
            looping: false,
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              '7. Mountain Climber exercise',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Aleo',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://assets.mixkit.co/videos/preview/mixkit-woman-doing-mountain-climber-exercise-726-large.mp4'),
            autoplay: true,
            looping: false,
          ),
        ],
      ),
    );
  }
}
