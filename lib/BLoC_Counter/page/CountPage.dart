import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/CounterCubit.dart';
import '../view/CounterView.dart';

class CountPage extends StatelessWidget {

  const CountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: CounterView(),
    );
  }
}



