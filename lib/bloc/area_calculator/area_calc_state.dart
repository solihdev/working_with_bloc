abstract class AreaCalcState {}

class InitialState extends AreaCalcState {
  InitialState({
    required this.a,
    required this.b,
  });

  final int a;
  final int b;
}

class AreaOfSquare extends AreaCalcState {
  AreaOfSquare(this.squareResult);

  num squareResult = 0;
}

class AreaOfRectangle extends AreaCalcState {
  AreaOfRectangle(this.restangleResult);

  num restangleResult = 0;
}

class AreaOfCircle extends AreaCalcState {
  AreaOfCircle(this.circleResult);

  num circleResult = 0;
}

class AreaOfTriangle extends AreaCalcState {
  AreaOfTriangle(this.triangleResult);

  num triangleResult = 0;
}

class AreaOfParallelogram extends AreaCalcState {
  AreaOfParallelogram(this.parallelogramResult);

  num parallelogramResult = 0;
}

class AreaOfTrapezoid extends AreaCalcState {
  AreaOfTrapezoid(this.trapezoidResult);

  num trapezoidResult = 0;
}
