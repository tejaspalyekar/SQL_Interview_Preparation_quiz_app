import 'package:flutter/material.dart';
import 'package:quize_app/startpage.dart';
import 'package:quize_app/question_screen.dart';

class Quize extends StatefulWidget {
  const Quize({super.key});
  @override
  State<Quize> createState() {
    return _Quizes();
  }
}

class _Quizes extends State<Quize> {
  Widget? screen;
  List<String> selectedans = [];

  @override
  void initState() {
    screen = StartPage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      screen = QuestionScreen(onselectAnswer: chooseAnswer);
    });
  }

  void chooseAnswer(String answer) {
    selectedans.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 86, 0, 143),
                    Color.fromARGB(255, 62, 12, 199)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
                child: screen)));
  }
}
