abstract class TextMakerState {}

class InitialState extends TextMakerState {
  InitialState({
    required this.word,
  });

  final String word;
}

class LowercaseConverterState extends TextMakerState {
  LowercaseConverterState(this.lowercaseConverterResult);

  String lowercaseConverterResult = "";
}

class UppercaseConverterState extends TextMakerState {
  UppercaseConverterState(this.uppercaseConverterResult);

  String uppercaseConverterResult = "";
}