import 'dart:async';

import 'package:demo_app/BLoC_CountDownTimer/Ticker.dart';
import 'package:demo_app/BLoC_CountDownTimer/events/TimeEvent.dart';
import 'package:demo_app/BLoC_CountDownTimer/states/TimeStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimeBloc extends Bloc<TimeEvent, TimeStates> {
  Ticker _ticker;

  StreamSubscription<int>? _tickSubscription;

  // TODO: set initial state
  static int _intiTime = 10;

  // initial state when run app
  TimeBloc({required Ticker ticker})
      : _ticker = ticker,
        super(TimeInitState(duration: _intiTime)) {
    // TODO: implement event handlers
    on<TimeStarted>(_onStarted);
    on<TimePaused>(_onPaused);
    on<TimeResumed>(_onResumed);
    on<TimeReset>(_onReset);
    on<TimeRunning>(_onTicked);
  }

  void _onStarted(TimeStarted event, Emitter<TimeStates> emit) {
    emit(TimeRunInProgress(duration: event.duration));
    _tickSubscription?.cancel();
    _tickSubscription = _ticker
        .tick(ticks: event.duration)
        .listen((duration) => add(TimeRunning(duration: duration)));
  }

  void _onPaused(TimePaused event, Emitter<TimeStates> emit) {
    if (state is TimeRunInProgress) {
      _tickSubscription?.pause();
      emit(TimeRunPause(duration: state.duration));
    }
  }

  void _onResumed(TimeResumed resume, Emitter<TimeStates> emit) {
    if (state is TimeRunPause) {
      _tickSubscription?.resume();
      emit(TimeRunInProgress(duration: state.duration));
    }
  }

  void _onReset(TimeReset event, Emitter<TimeStates> emit) {
    _tickSubscription?.cancel();
    emit(TimeInitState(duration: _intiTime));
  }

  void _onTicked(TimeRunning event, Emitter<TimeStates> emit) {
    emit(
      event.duration > 0
          ? TimeRunInProgress(duration: event.duration)
          : const TimeRunComplete(),
    );
  }

  @override
  Future<void> close() {
    _tickSubscription?.cancel();
    return super.close();
  }
}
