import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'area_calc_state.dart';

class AreaCalcCubit extends Cubit<AreaCalcState> {
  AreaCalcCubit() : super(InitialState(a: 10, b: 10));

  areaOfSquare(int a) {
    emit(AreaOfSquare(a * a));
  }

  areaOfRectangle(int a, int b) {
    emit(AreaOfRectangle(a * b));
  }

  areaOfCircle(int radius) {
    emit(AreaOfCircle(pow(radius, 2) * pi));
  }

  areaOfTriangle(int h, int base) {
    emit(AreaOfTriangle(h * base / 2));
  }

  areaOfParallelogram(int h, int base) {
    emit(AreaOfTriangle(h * base));
  }

  areaOTrapezoid(int h, int base1, int base2) {
    emit(AreaOfTriangle(h * (base1 + base2) / 2));
  }
}
