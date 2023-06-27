import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_provider.dart';
import 'couter_page_3.dart';

class CounterPage2 extends StatelessWidget {
  const CounterPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter page 2'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CounterPage3(),));
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
