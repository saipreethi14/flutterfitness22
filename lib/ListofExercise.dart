import 'package:flutter/material.dart';
import 'Excercisedetailspage.dart';
import 'ImageContent.dart';
import 'ReusableCard.dart';

class ListofExercise extends StatefulWidget {
  @override
  _ListofExerciseState createState() => _ListofExerciseState();
}

class _ListofExerciseState extends State<ListofExercise>
    with TickerProviderStateMixin {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBD3D4),

      appBar: AppBar(
          backgroundColor: Color(0xFF660000),
          title:
          Row(
            children:<Widget> [
              Text('List Of Exercises', style: TextStyle(
                fontFamily: 'Aleo',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ],
          )
      ),

      // appBar: AppBar(
      //   leading: IconButton(
      //     iconSize: 25,
      //     splashColor: Colors.white70,
      //     icon:Icon(Icons.arrow_back_ios_new_rounded), onPressed: () {  },),
      //   title: Text(
      //     'GET SET GO',
      //     style: TextStyle(fontFamily: 'Aleo'),
      //   ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.more_vert),
      //     ),
      //   ],
      //   backgroundColor: Colors.black,
      // ),
      body: _buildListView(context),
    );
  }
}

ListView _buildListView(BuildContext context) {
  final List<String> alphabets = <String>[
    'Front Planks',
    'Side Planks',
    'Ab Wheel Rollouts',
    'Windshield Wipers',
    'Lying Leg Raises',
    'Hanging Leg Raises',
    'Standing  Squats'
  ];

  return ListView.builder(
      itemCount: alphabets.length,
      itemBuilder: (_, index) {
        return ResusableCard(
          onPress: () {
             Navigator.push(
                 context,
                MaterialPageRoute(
                   builder: (Context) => Exercisedetailspage(index)));},
          cardChild: ImageContent(
            img1: Image.asset('images/L$index.jpg',
                height: 200, fit: BoxFit.fill),
            label: alphabets[index].toUpperCase(),
          ),
          theColor: Colors.white,
        );

      });
}
