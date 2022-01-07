
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ff/Coachsetter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'SignInPage.dart';
import 'package:ff/auth_service.dart';
import 'package:flutter/cupertino.dart';

class CoachData extends StatefulWidget with ChangeNotifier {

  @override
  _CoachDataState createState() => _CoachDataState();
}

class _CoachDataState extends State<CoachData> {



  Widget _buildList(QuerySnapshot snapshot) {
    return ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
          thickness: 2,
        ),
        itemCount: snapshot.docs.length,
        itemBuilder: (context, index) {
          final doc = snapshot.docs[index];
          return Card(
            elevation: 0,
            color: Colors.transparent,
            child: Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10.0),),
               Column(
                 children: <Widget>[
                   Padding(padding: EdgeInsets.all(10.0),),
                   CircleAvatar(
                     backgroundImage: NetworkImage(doc['image']),
                     radius: 50,
                     backgroundColor: Colors.grey,
                     child: GestureDetector(onTap: () {}),
                   ),
                 ],
               ),
                Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(10.0),),
                    Text("Name " + doc["name"], style:
                    TextStyle(fontSize: 15 )),
                    Text("Age: " + doc["Age"], style:
                    TextStyle(fontSize: 15),),
                    Text("Proficient: " + doc["proficient"], style:
                    TextStyle(fontSize: 15),),
                    Text("Email ID: " + doc["Email ID"], style:
                    TextStyle(fontSize: 15),),

                  ],
                )
              ],
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    WidgetsFlutterBinding.ensureInitialized();
     Firebase.initializeApp();

   
   return Scaffold(
       backgroundColor:Color(0xFFEBD3D4),
     appBar: AppBar(
       title: Text(
         "Coach Data", style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Aleo'),
       ),
       backgroundColor: Color(0xFF660000),
       actions: <Widget>[
         IconButton(
           onPressed: () {
             context.read<AuthService>().Signout().then((result) => Navigator.push(context, MaterialPageRoute(builder: (Context) => SignInPage())));
           },
           icon: Icon(Icons.logout),
         ),
       ],
     ),
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(children: [
         StreamBuilder<QuerySnapshot>(
             stream: FirebaseFirestore.instance.collection("coach")
                 .snapshots(),
             builder: (context, snapshot) {
               if (!snapshot.hasData) return LinearProgressIndicator();
               return Expanded(
                   child: _buildList(snapshot.requireData)
               );
             }
         )
       ]),
     )
   );
  }
}
