import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:working_with_bloc/bloc/area_calculator/area_calc_cubit.dart';
import 'package:working_with_bloc/bloc/text_maker/text_maker_cubit.dart';
import 'package:working_with_bloc/ui/main_screen/main_screen.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AreaCalcCubit()),
        BlocProvider(create: (context) => TextMakerCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Working with Bloc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
