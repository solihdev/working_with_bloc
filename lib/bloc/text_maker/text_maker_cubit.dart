import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:working_with_bloc/bloc/text_maker/text_maker_state.dart';

class TextMakerCubit extends Cubit<TextMakerState> {
  TextMakerCubit() : super(InitialState(word: "Hello"));

  lowercaseConverter(String word) {
    emit(LowercaseConverterState(word.toLowerCase()));
  }

  uppercaseConverter(String word) {
    emit(LowercaseConverterState(word.toUpperCase()));
  }
}
