import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider<String>(
  (ref) {
    return 'Hello Pradeep';
  },
);

final gfName = StateProvider<String?>((ref) => null);

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(gfName) ?? "NaN";

    return Scaffold(
      appBar: AppBar(title: const Text("Riverpod")),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Text(name, style: const TextStyle(fontSize: 25)),
          ElevatedButton(onPressed: () {}, child: const Text("Click me")),
          TextField(
            onSubmitted: (value) {
              ref.read(gfName.notifier).update((state) => value);
            },
          )
        ]),
      ),
    );
  }
}
