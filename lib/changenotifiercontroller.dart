import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final changeNotifierData=ChangeNotifierProvider<ChangeNotifierController>((ref) => ChangeNotifierController(),);

class ChangeNotifierController extends ChangeNotifier{
  String username="Sachin";

  void changeName(){
  username="Nazim Dalla";
  notifyListeners();
  }

}