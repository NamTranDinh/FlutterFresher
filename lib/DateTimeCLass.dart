import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateTimeCLass extends StatefulWidget {

  @override
  State<DateTimeCLass> createState() => _DateTimeCLassState();
}

class _DateTimeCLassState extends State<DateTimeCLass> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('init State');
  }

  @override
  Widget build(BuildContext context) {

    print('build state');
    return MaterialApp(
      title: 'This is datetime' ,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children : [
              Text(
                getDateFromTimeCurrent(1665395276),
                textDirection: TextDirection.rtl,
                style: const TextStyle(fontSize: 25, color: Colors.green),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose state');
  }

  String getDateFromTimeCurrent(int timestamp){

    var now = DateTime.now();

    var date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

    var format = formatDate(date, [yyyy, '-', M, '-', d, ' \n ',HH, ':', nn, ':', ss ]);


    return format;
  }

  String getCurrentDateTime(){
    var now = DateTime.now();
    return now.toString();
  }

}
