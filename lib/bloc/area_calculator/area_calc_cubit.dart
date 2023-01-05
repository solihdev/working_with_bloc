import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'area_calc_state.dart';

class AreaCalcCubit extends Cubit<AreaCalcState> {
  AreaCalcCubit() : super(InitialState(a: 10, b: 10));

  areaOfSquare({required int a}) {
    emit(AreaOfSquareState(a * a));
  }

  areaOfRectangle({required int a, required int b}) {
    emit(AreaOfRectangleState(a * b));
  }

  areaOfCircle({required int radius}) {
    emit(AreaOfCircleState(pow(radius, 2) * pi));
  }

  areaOfTriangle({required int h, required int base}) {
    emit(AreaOfTriangleState(h * base / 2));
  }

  areaOfParallelogram({required int h, required int base}) {
    emit(AreaOfTriangleState(h * base));
  }

  areaOfTrapezoid({required int h, required int base1, required int base2}) {
    emit(AreaOfTriangleState(h * (base1 + base2) / 2));
  }
}
