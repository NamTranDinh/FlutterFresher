import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {

  static const _initValue = 0;

  CounterCubit() : super(_initValue);

  /// Add 1 to the current state.
  void increment() => emit(state + 1);

  /// Subtract 1 from the current state.
  void decrement() => emit(state - 1);
}