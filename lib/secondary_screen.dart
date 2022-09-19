import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dice_simul/bloc/dice_number/dice_number_cubit.dart';
import 'package:dice_simul/bloc/timeout/timeout_cubit.dart';

class SecondaryScreen extends StatefulWidget {
  const SecondaryScreen({super.key});

  @override
  State<SecondaryScreen> createState() => _SecondaryScreenState();
}

class _SecondaryScreenState extends State<SecondaryScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiceNumberCubit, DiceNumberState>(
      builder: (context, stater) {
        return BlocListener<TimeoutCubit, TimeoutState>(
          listener: (context, state) {
            if (state is TimeoutEnded) {
              Navigator.of(context).pop();
            } // TODO: implement listener
          },
          child: GestureDetector(
            onTap: context.read<TimeoutCubit>().restartTimer,
            child: Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                          "${(stater is DiceNumberFinal) ? stater.result : "You didnt press the button"}")),
                  // if (state is TimeoutEnded)
                  //     {Navigator.of(context.pop)}
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
