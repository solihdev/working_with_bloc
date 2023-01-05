import 'package:flutter/material.dart';
import 'package:working_with_bloc/ui/calculator_screen/calculator_screen.dart';
import 'package:working_with_bloc/ui/text_maker_screen/text_maker_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CalculatorScreen()));
                },
                child: const Text("Calculator Screen")),
            const SizedBox(height: 50,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TextMakerScreen()));
                },
                child: const Text("Text Maker Screen")),
          ],
        ),
      ),
    );
  }
}
