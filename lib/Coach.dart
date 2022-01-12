import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


// in this  class I provided the properties of a coach like name ,age,proficient,and email id with image
class Coach {

  late String name;
  late int age;
  late String proficient;
  late String emailid;
  late Image image;

Coach();

    Coach.fromMap(Map<String, dynamic> data){
      name = data['name'];
      image = data['image'];
      age = data['Age'];
      proficient = data['proficient'];
      emailid = data['Email ID'];
  }
}