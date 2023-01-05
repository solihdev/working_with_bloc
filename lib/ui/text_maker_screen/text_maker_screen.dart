import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:working_with_bloc/bloc/text_maker/text_maker_cubit.dart';
import 'package:working_with_bloc/bloc/text_maker/text_maker_state.dart';

class TextMakerScreen extends StatelessWidget {
  const TextMakerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController myTextController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Text Maker Screen"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<TextMakerCubit, String>(
                builder: (context, state) {
                  return Text(state.toString());
            }),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Please, enter the text",
                  labelText: "Word",
                ),
                onChanged: (value) {
                  BlocProvider.of<TextMakerCubit>(context)
                      .uppercaseConverter(value);
                },
                controller: myTextController,
                onSaved: (String? value) {},
              ),
            ),
          ],
        ));
  }
}
