import 'package:demo_app/BLoC_CountDownTimer/Ticker.dart';
import 'package:demo_app/BLoC_CountDownTimer/bloc/TimeBloc.dart';
import 'package:demo_app/BLoC_CountDownTimer/view/TimeView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimePage extends StatelessWidget {
  const TimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimeBloc(ticker: Ticker()),
      child:TimeView(),
    );
  }

}
