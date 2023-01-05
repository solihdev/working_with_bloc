import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:working_with_bloc/bloc/text_maker/text_maker_cubit.dart';
import 'package:working_with_bloc/bloc/text_maker/text_maker_state.dart';

class TextMakerScreen extends StatelessWidget {
  const TextMakerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController MyTextController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Maker Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<TextMakerCubit, TextMakerState>(builder: (context,state){
            if(state is UppercaseConverterState){
              return Text(
                "Upper cases: ${state.uppercaseConverterResult}",
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              );
            }
            else if(state is LowercaseConverterState){
              return Text(
                "Lower cases: ${state.lowercaseConverterResult}",
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
          }),
          const SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter the text",
                labelText: "Word",
              ),
              onChanged: (value){
                BlocProvider.of<TextMakerCubit>(context).uppercaseConverter(value);
              },
              controller: MyTextController,
              onSaved: (String? value) {
              },
            ),
          ),

        ],
      )
    );
  }
}
