import 'package:dice_simul/bloc/dice_number/dice_number_cubit.dart';
import 'package:dice_simul/bloc/timeout/timeout_cubit.dart';
import 'package:dice_simul/main_screen.dart';
import 'package:dice_simul/secondary_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => DiceNumberCubit()),
      BlocProvider(create: (_) => TimeoutCubit())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            '/': (context) => const MainScreen(),
            '/secScreen': (context) => const SecondaryScreen(),
          },
          initialRoute: '/',
          
    ));
  }
}
