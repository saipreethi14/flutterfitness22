import 'package:flutter/material.dart';
import 'Excercisedetailspage.dart';
import 'ImageContent.dart';
import 'ReusableCard.dart';

class ListofExercise extends StatefulWidget {
  @override
  _ListofExerciseState createState() => _ListofExerciseState();
}

class _ListofExerciseState extends State<ListofExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.fitness_center),
        ),
        title: Text('GET SET GO'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: _buildListView(context),
    );
  }
}

ListView _buildListView(BuildContext context){
  final List<String> alphabets = <String>[
    'Front Planks',
    'Side Planks',
    'Ab Wheel Rollouts',
    'Windshield Wipers',
    'Lying Leg Raises',
    'Hanging Leg Raises',
    'Standing Russian Twists'
  ];

  return ListView.builder(
      itemCount: alphabets.length,
      itemBuilder: (_,index){
        return ResusableCard(
          onPress: () {
            Navigator.push(context, MaterialPageRoute(builder: (Context) => Exercisedetailspage(index)));
          },
          cardChild: ImageContent(
            img1: Image.asset('images/L$index.jpg',height: 100,
                fit:BoxFit.fill),
            label: alphabets[index].toUpperCase(),
          ),
          theColor: Colors.white,
        );
        // return Center(
        //   child: ListTile(
        //     leading: Icon(Icons.ac_unit),
        //     title: Text(alphabets[index],style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        //     subtitle: Text('the subtitle',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        //           ),
        // );
      }
  );
}