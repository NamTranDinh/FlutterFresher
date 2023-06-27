import 'dart:isolate';

import 'package:flutter/material.dart';

class MainIsolate extends StatelessWidget {
  const MainIsolate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
  }

  AppBar _appBar() => AppBar(
        title: const Text('Demo Isolate'),
        centerTitle: true,
      );

  Widget _body(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _future();
                },
                child: const Text('Without Isolate'),
              ),
              const SizedBox(width: 50),
              ElevatedButton(
                onPressed: () {
                  _createIsolate();
                },
                child: const Text('With Isolate'),
              )
            ],
          )
        ],
      ),
    );
  }

  void _createIsolate() {
    var receivePort = ReceivePort();
    Isolate.spawn(_futureIso, receivePort.sendPort);
    receivePort.listen((message) {
      print(message);
      receivePort.close();
    });
  }

  Future<void> _futureIso(SendPort sendPort) async {
    var sum = 0.0;
    for (int i = 1; i <= 1000000000; ++i) {
      sum += i;
    }
    sendPort.send(sum);
  }

  Future<void> _future() async {
    var sum = 0.0;
    for (int i = 1; i <= 1000000000; ++i) {
      sum += i;
    }
    print(sum);
  }
}
