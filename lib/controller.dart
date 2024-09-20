import 'package:flutter_riverpod/flutter_riverpod.dart';


///simple provider
final stringProvider=Provider<String>((ref) =>'You have pushed the button this many times');


///state Provider
final counterProvider = StateProvider<int>((ref) => 0);

///futureProvider
final liveWeather =FutureProvider<String>((ref) =>liveData());

Future<String>liveData()async{
  return await Future.delayed(
    const Duration(seconds: 2),
        ()=>"20",
  );
}

///streamProvider
final streamData=StreamProvider<int>((ref) => fetchNumber(),);


   Stream<int>fetchNumber() {
     return Stream<int>.periodic(
       const Duration(seconds: 2),
         (number)=>number,
     ).take(100);
   }











