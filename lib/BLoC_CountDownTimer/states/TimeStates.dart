import 'package:equatable/equatable.dart';

abstract class TimeStates extends Equatable {
  final int duration;
  const TimeStates({required this.duration});

  @override
  List<Object?> get props => [duration];
}

class TimeInitState extends TimeStates {
  const TimeInitState({required super.duration});
}

class TimeRunPause extends TimeStates{
  const TimeRunPause({required super.duration});

  @override
  String toString() => 'TimeRunPause { duration: $duration }';
}

class TimeRunInProgress extends TimeStates{
   const TimeRunInProgress({required super.duration});

  @override
  String toString() => 'TimerRunInProgress { duration: $duration }';
}

class TimeRunComplete extends TimeStates{
  const TimeRunComplete() : super(duration: 0);
}
