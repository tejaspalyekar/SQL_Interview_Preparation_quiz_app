import 'package:flutter/material.dart';
import 'package:quize_app/answerbutton.dart';
import 'package:quize_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onselectAnswer});

  final void Function(String answer) onselectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _Questions();
  }
}

class _Questions extends State<QuestionScreen> {
  var count = 0;
  void currentcount(String selectedanswer) {
    widget.onselectAnswer(selectedanswer);

    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestions = questions[count];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentquestions.text,
              style: GoogleFonts.oswald(
                fontSize: 25,
                color: Color.fromARGB(179, 245, 218, 253),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentquestions.shuffleit().map((answer) {
              return AnswerButton(
                  answer: answer,
                  onTap: () {
                    currentcount(answer);
                  });
            })
          ],
        ),
      ),
    );
  }
}
