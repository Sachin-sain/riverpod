
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_khde/staetnotifiercontrolller.dart';

class CounterData extends ConsumerWidget {
  const CounterData({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    var data=ref.watch(counterProviderNew);
    return Scaffold(
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          return Center(
            child: Text(data.toString(),style:
            const TextStyle(color: Colors.green
            ),),
          );
        },
      ),
  floatingActionButton: FloatingActionButton(onPressed: () {
  ref.read(counterProviderNew.notifier).increment();

   },
  child: const Icon(Icons.add),
),
    );
  }
}
