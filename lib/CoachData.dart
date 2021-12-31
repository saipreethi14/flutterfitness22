
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
    return ListView.builder(
        itemCount: snapshot.docs.length,
        itemBuilder: (context, index) {
          final doc = snapshot.docs[index];
          return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: GestureDetector(onTap: () {}),
          ),
            title: Text(doc["name"]),
            subtitle: Text(doc["Age"]),
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
