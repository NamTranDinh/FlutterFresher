import 'package:flutter_bloc/flutter_bloc.dart';

class TimeBlocObserver extends BlocObserver{
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}