

import 'dart:collection';
import 'Coach.dart';
import 'package:ff/Coach.dart';
import 'package:flutter/cupertino.dart';

class Coachsetter with ChangeNotifier{
  List<Coach> _coachList =[];
  late Coach _currentCoach;

  UnmodifiableListView<Coach> get coachList => UnmodifiableListView(_coachList);

  Coach get currentCoach => _currentCoach;

   set coachList(List<Coach> coachlist){
    _coachList = coachlist;
    notifyListeners();
  }
  set currentCoach(Coach coach){
    _currentCoach = coach;
    notifyListeners();
  }
}