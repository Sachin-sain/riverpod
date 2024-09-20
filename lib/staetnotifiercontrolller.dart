import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProviderNew=StateNotifierProvider<StateNotifierController,int>((ref) => StateNotifierController(),);


class StateNotifierController extends StateNotifier<int>{
  StateNotifierController():super(0);

  void increment(){
    state=state+1;///or sate++
  }

}