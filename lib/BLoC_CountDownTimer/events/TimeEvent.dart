import 'package:equatable/equatable.dart';

abstract class TimeEvent extends Equatable {
  const TimeEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class TimeStarted extends TimeEvent {
  final int duration;

  const TimeStarted({required this.duration});
}

class TimePaused extends TimeEvent {
  const TimePaused();
}

class TimeResumed extends TimeEvent {
  const TimeResumed();
}

class TimeReset extends TimeEvent {
  const TimeReset();
}

class TimeRunning extends TimeEvent {
  final int duration;

  const TimeRunning({required this.duration});

  @override
  // TODO: implement props
  List<Object?> get props => super.props;
}
