abstract class AreaCalcState {}

class InitialState extends AreaCalcState {
  InitialState({
    required this.a,
    required this.b,
  });

  final int a;
  final int b;
}

class AreaOfSquareState extends AreaCalcState {
  AreaOfSquareState(this.squareResult);

  num squareResult = 0;
}

class AreaOfRectangleState extends AreaCalcState {
  AreaOfRectangleState(this.restangleResult);

  num restangleResult = 0;
}

class AreaOfCircleState extends AreaCalcState {
  AreaOfCircleState(this.circleResult);

  num circleResult = 0;
}

class AreaOfTriangleState extends AreaCalcState {
  AreaOfTriangleState(this.triangleResult);

  num triangleResult = 0;
}

class AreaOfParallelogramState extends AreaCalcState {
  AreaOfParallelogramState(this.parallelogramResult);

  num parallelogramResult = 0;
}

class AreaOfTrapezoidState extends AreaCalcState {
  AreaOfTrapezoidState(this.trapezoidResult);

  num trapezoidResult = 0;
}
