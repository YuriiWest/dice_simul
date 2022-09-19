part of 'timeout_cubit.dart';

abstract class TimeoutState extends Equatable {
  const TimeoutState();

  @override
  List<Object> get props => [];
}

class TimeoutInitial extends TimeoutState {
    @override
  List<Object> get props => [];
  // BuildContext context;
  // TimeoutInitial(this.context);
}

class TimeoutRestarted extends TimeoutState {
  @override
  List<Object> get props => [];
}

class TimeoutEnded extends TimeoutState {
  @override
  List<Object> get props => [];
}
