import 'package:dice_simul/bloc/dice_number/dice_number_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiceWidget extends StatefulWidget {
  const DiceWidget({super.key});

  @override
  State<DiceWidget> createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiceNumberCubit, DiceNumberState>(
        builder: (context, state) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => context.read<DiceNumberCubit>().rollTheDice(),
            child: Container(
              height: 130,
              width: 130,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 241, 148, 25),
                  shape: BoxShape.rectangle),
              child: Center(
                child: Text(
                  (state is DiceNumberData) ? state.number.toString() : "click",
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "${(state is DiceNumberFinal) ? "Result: ${state.result}" : " "}",
            style: TextStyle(fontSize: 35),
          )
        ],
      );
    });
  }
}
