import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ff/Coach.dart';
import 'package:ff/Coachsetter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// this class will provide Firebase services such as Login and Logout  of a user
class AuthService {
  final FirebaseAuth _auth;

  AuthService(this._auth);

  Stream<User?> get authStateChanges => _auth.idTokenChanges();

  Future<String> login(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    return "Logged In";
  }

  Future<String> Signup(String email, String password) async {
    await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    return "Signed Up";
  }

  Future Signout() async {
    print(_auth.currentUser);
    return _auth.signOut();
  }
}
// CollectionReference _collectionRef =
// FirebaseFirestore.instance.collection('coach');
//
// Future<void> getcoach(Coachsetter ca) async {
//   // Get docs from collection reference
//   QuerySnapshot querySnapshot = await _collectionRef.get();
//
//   // Get data from docs and convert map to List
//   final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
//   List<Coach> _coachList = [];
//   print(allData);
//   allData.forEach((element) {
//     print(element);
//     // Map<dynamic, dynamic> result = element.get();
//     // _coachList.add(Coach.fromMap(result));
//   });
//   ca.coachList = _coachList;
// }
