
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'controller.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("jjj");
    // Read the counter state
    final counter = ref.watch(counterProvider);
    final data=ref.read<String>(stringProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Counter Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              data,
            ),
            Text(
              '$counter',
              style: const TextStyle(color: Colors.red,fontSize: 30)
            ),
            ///get data user consumer widget
            // Consumer(builder: (BuildContext context, ref, child){
            //   final counter=ref.watch(counterProvider);
            //   return Center(
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text(
            //           data,
            //         ),
            //         Text(
            //             '$counter',
            //             style: const TextStyle(color: Colors.red,fontSize: 30)
            //         ),
            //       ],
            //     ),
            //   );
            //
            // })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Increment the counter
          ref.read(counterProvider.notifier).state++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}