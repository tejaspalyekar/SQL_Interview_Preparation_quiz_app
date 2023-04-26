import 'package:flutter/material.dart';
import 'package:quize_app/answerbutton.dart';
import 'package:quize_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _Questions();
  }
}

class _Questions extends State<QuestionScreen> {
  final currentquestions = questions[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentquestions.text,
            style: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answer: currentquestions.answers[0], onTap: () {}),
          AnswerButton(answer: currentquestions.answers[1], onTap: () {}),
          AnswerButton(answer: currentquestions.answers[2], onTap: () {}),
          AnswerButton(answer: currentquestions.answers[3], onTap: () {})
        ],
      ),
    );
  }
}
