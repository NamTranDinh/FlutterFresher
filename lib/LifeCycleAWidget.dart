import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LifeCycleAWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyLifeCycleWidget();
  }
}

class _MyLifeCycleWidget extends State<LifeCycleAWidget> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    print('initState()');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    if(state == AppLifecycleState.paused){
      print('App is in background mode');
    }else if(state == AppLifecycleState.resumed){
      print('App is in Foreground');
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
    print('dispose()');
  }

  @override
  Widget build(BuildContext context) {
    print('build()');
    return const MaterialApp(title: 'NAM TRAN', home: Scaffold(),);
  }
}
