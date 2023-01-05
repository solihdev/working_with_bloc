import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:working_with_bloc/bloc/text_maker/text_maker_state.dart';

class TextMakerCubit extends Cubit<String> {
  TextMakerCubit() : super("");

  lowercaseConverter(String word) {
    emit(word.toLowerCase());
  }

  uppercaseConverter(String word) {
    emit(word.toUpperCase());
  }
}
