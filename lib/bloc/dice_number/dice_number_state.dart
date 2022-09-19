part of 'dice_number_cubit.dart';

abstract class DiceNumberState extends Equatable {}

class DiceNumberInitial extends DiceNumberState {
  final String click;

  DiceNumberInitial(this.click);
  @override
  List<String> get props => [click];
}

class DiceNumberData extends DiceNumberState {
  DiceNumberData(this.number);

  final int number;

  @override
  List<int> get props => [number];
}

class DiceNumberFinal extends DiceNumberState {
  final int result;
  DiceNumberFinal(this.result);
  @override
  List<int> get props => [result];
}
