import 'package:flutter/material.dart';
import 'Excercisedetailspage.dart';
import 'ImageContent.dart';
import 'ReusableCard.dart';

// this page shows the list of all the exercises
// stateful widget for list of exercises is used because state is changing

class ListofExercise extends StatefulWidget {
  @override
  _ListofExerciseState createState() => _ListofExerciseState();
}

class _ListofExerciseState extends State<ListofExercise>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background color of screen
      backgroundColor: Color(0xFFEBD3D4),
      appBar: AppBar(
          // background color of appbar
          backgroundColor: Color(0xFF660000),
          title: Row(
            children: <Widget>[
              Text(
                //name on the appbar
                'List Of Exercises',
                style: TextStyle(
                  fontFamily: 'Aleo',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          )),
      body: _buildListView(context), // displaying in listview
    );
  }
}

ListView _buildListView(BuildContext context) {
  final List<String> alphabets = <String>[
    //exercises names
    //first exercise
    'Front Planks',
    //second exercise
    'Side Planks',
    //third exercise
    'Ab Wheel Rollouts',
    //fourth exercise
    'Windshield Wipers',
    //fifth exercise
    'Lying Leg Raises',
    //sixth exercise
    'Hanging Leg Raises',
    //seventh exercise
    'Standing  Squats',
  ];

  return ListView.builder(
      itemCount: alphabets.length,
      itemBuilder: (_, index) {
        return ResusableCard(
          onPress: () {
            //navigate from from page to other page
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (Context) => Exercisedetailspage(index)));
          },
          //to display the images
          cardChild: ImageContent(
            img1: Image.asset('images/L$index.jpg',
                height: 200, fit: BoxFit.fill),
            // to display the labels and change exercise labels to uppercase
            label: alphabets[index].toUpperCase(),
          ),
          //background color of images
          theColor: Colors.white,
        );
      });
}
