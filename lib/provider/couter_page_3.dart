import 'package:demo_app/Provider/couter_page_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_provider.dart';

class CounterPage3 extends StatelessWidget {
  const CounterPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter page 3'),
        actions: [
          TextButton(
            onPressed: () {
            },
            child: const Text('next', style: TextStyle(color: Colors.white),),

          )
        ],
      ),
      body: Center(
        child: Text(
          context.watch<CounterProvider>().counter.toString(),
          style: const TextStyle(fontSize: 36),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterProvider>().increase();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
