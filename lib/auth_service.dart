

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ff/Coach.dart';
import 'package:ff/Coachsetter.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthService {
  final FirebaseAuth _auth;


  AuthService(this._auth);

  Stream<User?> get authStateChanges => _auth.idTokenChanges();

  Future<String> login(String email, String password) async {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return "Logged In";

  }

  Future<String> Signup(String email, String password) async {

      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return "Signed Up";
  }
  Future Signout() async{
    print(_auth.currentUser);
    return _auth.signOut();
  }
  // Future<void> getCoaches() async{
  //   var _instance = FirebaseFirestore.instance;
  //   CollectionReference c =  _instance!.collection('coach');
  //   DocumentSnapshot snapshot = await c.doc().get();
  //   var data = snapshot.data() as Map;
  // snapshot.data().f
  // }


}
// getCoach(Coachsetter co ) async{
//   QuerySnapshot snapshot= (await FirebaseFirestore.instance.collection("coach").doc().get()) as QuerySnapshot<Object?>;
//
//   List<Coach> _coachlist = [];
//   snapshot.docs.forEach((documents) {
//     Coach coach = Coach.fromMap(documents);
//     _coachlist.add(coach);
//   });
//   co.coachList = _coachlist;
// }



