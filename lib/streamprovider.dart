import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'controller.dart'; // Assuming this contains your streamData provider.

class StreamProviderData extends ConsumerWidget { // Change to ConsumerWidget
  const StreamProviderData({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asyncData = ref.watch(streamData); // Watching the StreamProvider
    return Scaffold(
      body: asyncData.when(
        data: (data) {
          return Center(
            child: Text(
              data.toString(),
              style: const TextStyle(color: Colors.red, fontSize: 30),
            ),
          );
        },
        error: (err, stackTrace) {
          return Center(child: Text(err.toString()));
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
