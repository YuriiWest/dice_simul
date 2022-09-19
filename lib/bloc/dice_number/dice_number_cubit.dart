import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'dice_number_state.dart';

class DiceNumberCubit extends Cubit<DiceNumberState> {
  DiceNumberCubit() : super(DiceNumberInitial("click"));
  var number;
  void rollTheDice() async {
    int? lastNumber;
    for (var i = 0; i < 15;) {
      number = Random().nextInt(6) + 1;
      if (lastNumber != number) {
        i++;
        await Future.delayed(const Duration(milliseconds: 100), () {});
        emit(DiceNumberData(number));
      }
      lastNumber = number;
    }
    emit(DiceNumberFinal(number));
  }
}
