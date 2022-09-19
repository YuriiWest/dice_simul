import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:async/async.dart';

part 'timeout_state.dart';

class TimeoutCubit extends Cubit<TimeoutState> {
  TimeoutCubit() : super(TimeoutInitial()) {
    setTimer();
  }

  final _timerDuration = const Duration(seconds: 3);

  RestartableTimer? timer;

  void _popPage() {
    emit(TimeoutEnded());
  }

  void setTimer() {
    timer = RestartableTimer(_timerDuration, _popPage);
    emit(TimeoutInitial());
  }

  void restartTimer() {
    timer?.reset();
  }
}
