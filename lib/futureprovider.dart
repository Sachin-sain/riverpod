
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controller.dart';

class WeatherReport extends ConsumerWidget {
  const WeatherReport({super.key});
  @override

  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
     body:   ref.watch(liveWeather).when(
       data: (data){
       return Center(
         child: Text(data.toString(),style: const TextStyle(color: Colors.red,fontSize: 30),)
       );
       },
       error: (err, stackTrace){
         Text(err.toString(),style: const TextStyle(color: Colors.red,fontSize: 30));
       },
       loading: (){
         return const Center(child: CircularProgressIndicator(),);
    }

    ),
    );
  }
}
