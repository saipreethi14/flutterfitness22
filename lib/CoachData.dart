
import 'package:ff/Coachsetter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'SignInPage.dart';
import 'package:ff/auth_service.dart';
import 'package:flutter/cupertino.dart';

class CoachData extends StatefulWidget {


  @override
  _CoachDataState createState() => _CoachDataState();
}

class _CoachDataState extends State<CoachData> {

  @override
  void initState() {
   Coachsetter coachsetter = Provider.of<Coachsetter>(context, listen: false);
  //getCoach(coachsetter);
   super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   AuthService authnotifier = Provider.of<AuthService>(context,listen: false);
   Coachsetter coachnotifier = Provider.of<Coachsetter>(context);
   
   return Scaffold(
     appBar: AppBar(
       title: Text(
         "Coach Data"
       ),
       actions: <Widget>[
         IconButton(
           onPressed: () {
             context.read<AuthService>().Signout().then((result) => Navigator.push(context, MaterialPageRoute(builder: (Context) => SignInPage())));
           },
           icon: Icon(Icons.logout),
         ),
       ],
     ),
     body: ListView.separated(
         itemBuilder: (BuildContext context,int index){
           return ListTile(
           title: Text(coachnotifier.coachList[index].name),



           );
    }, itemCount: coachnotifier.coachList.length, separatorBuilder: (BuildContext context, int index) {
           return Divider(
           color: Colors.black,
           );
    },
     ),
   );
  
  
  
  }
  
} 