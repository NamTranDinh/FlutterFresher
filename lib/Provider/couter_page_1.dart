import 'package:demo_app/Provider/counter_provider.dart';
import 'package:demo_app/Provider/couter_page_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage1 extends StatelessWidget {
  CounterProvider myCounter;
  CounterPage1({super.key, required this.myCounter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter page 1'),
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
          // context.watch<CounterProvider>().counter.toString(),
          myCounter.counter.toString(),
          style: const TextStyle(fontSize: 36),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.read<CounterProvider>().increase();
          myCounter.increase();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
