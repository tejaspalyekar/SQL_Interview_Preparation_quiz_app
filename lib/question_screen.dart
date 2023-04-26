import 'package:flutter/material.dart';
import 'package:quize_app/answerbutton.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _Questions();
  }
}

class _Questions extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "The Questions are",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answer: "Answer1", onTap: () {}),
          AnswerButton(answer: "Answer2", onTap: () {}),
          AnswerButton(answer: "Answer3", onTap: () {})
        ],
      ),
    );
  }
}
