import 'package:flutter/material.dart';
import 'package:quize_app/quiz.dart';
import 'package:quize_app/answerbutton.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.selectedans});
  List<String> selectedans;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Selected answers are",
                style: TextStyle(fontSize: 20, color: Colors.white)),
            const SizedBox(height: 20),
            ...selectedans.map((answer) {
              return AnswerButton(
                  answer: answer,
                  onTap: () {
                    
                  });
            })

            ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(24, 132, 0, 255),
                  foregroundColor: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Text(selectedans[0]))
          ],
        ),
      ),
    );
  }
}
