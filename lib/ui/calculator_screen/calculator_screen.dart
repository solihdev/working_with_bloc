import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:working_with_bloc/bloc/area_calculator/area_calc_cubit.dart';
import 'package:working_with_bloc/bloc/area_calculator/area_calc_state.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<AreaCalcCubit, AreaCalcState>(
            builder: (context, state) {
              if (state is AreaOfSquare) {
                return Text(
                  "This is Addition:${state.squareResult}",
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                );
              }
              return const Text(
                "Initial state",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              );
            },
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    BlocProvider.of<AreaCalcCubit>(context).areaOfSquare(12);
                  },
                  icon: const Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }
}
