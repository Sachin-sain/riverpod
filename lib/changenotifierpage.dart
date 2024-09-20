import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'changenotifiercontroller.dart';

class ChangeNotifierPage extends ConsumerWidget {
  const ChangeNotifierPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      body:Consumer(builder: (BuildContext context, WidgetRef ref, child){
        var userDta=ref.watch(changeNotifierData);
        return  Center(
          child: Text(userDta.username.toString(),),
        );

      }),
floatingActionButton: FloatingActionButton(onPressed: () {
  ref.read(changeNotifierData.notifier).changeName();
},
  child: const Icon(Icons.add),
),
    );
  }
}
