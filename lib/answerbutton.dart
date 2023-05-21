import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answer, required this.onTap});
  final String answer;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 26, 0, 99),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        child: Text(
          answer,
          style: const TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
        ));
  }
}
