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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<AreaCalcCubit, AreaCalcState>(
              builder: (context, state) {
                if (state is AreaOfSquareState) {
                  return Text(
                    "Area of Square: ${state.squareResult}",
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  );
                }
                else if (state is AreaOfRectangleState) {
                  return Text(
                    "Area of Rectangle: ${state.restangleResult}",
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  );
                }
                else if (state is AreaOfCircleState) {
                  return Text(
                    "Area of Circle: ${state.circleResult}",
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  );
                }
                else if (state is AreaOfTriangleState){
                  return Text(
                    "Area of Triangle: ${state.triangleResult}",
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  );}
                else if (state is AreaOfParallelogramState) {
                  return Text(
                    "Area of Parallelogram: ${state.parallelogramResult}",
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  );
                }
                else if (state is AreaOfTrapezoidState) {
                  return Text(
                    "Area of Trapezoid: ${state.trapezoidResult}",
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
            TextButton(
              onPressed: () {
                BlocProvider.of<AreaCalcCubit>(context).areaOfSquare(a: 12);
              },
              child: const Text("Area of Square"),
            ),
            TextButton(
              onPressed: () {
                BlocProvider.of<AreaCalcCubit>(context).areaOfCircle(radius: 12);
              },
              child: const Text("Area of Circle"),
            ),
            TextButton(
              onPressed: () {
                BlocProvider.of<AreaCalcCubit>(context).areaOfTriangle(h: 6,base: 10);
              },
              child: const Text("Area of Triangle"),
            ),
            TextButton(
              onPressed: () {
                BlocProvider.of<AreaCalcCubit>(context).areaOfParallelogram(h: 6,base: 10);
              },
              child: const Text("Area of Parallelogram"),
            ),
            TextButton(
              onPressed: () {
                BlocProvider.of<AreaCalcCubit>(context).areaOfTrapezoid(h: 6,base1: 10,base2: 20);
              },
              child: const Text("Area of Trapezoid"),
            ),
          ],
        ),
      ),
    );
  }
}
