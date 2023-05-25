import 'package:flutter/material.dart';
import 'package:quize_app/data/questions.dart';
import 'package:quize_app/summarydata.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.resetquiz, {super.key, required this.selectedans});

  void Function() resetquiz;

  final List<String> selectedans;
  final String totalquestion = questions.length.toString();
  final List<Map<String, Object>> summary = [];
  List<Map<String, Object>> getSummaryData() {
    for (var i = 0; i < selectedans.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedans[i],
      });
    }

    return summary;
  }

  int correctanswer() {
    int count = 0;
    for (var i = 0; i < selectedans.length; i++) {
      if (selectedans[i] == questions[i].answers[0]) {
        count++;
      }
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    int ans = correctanswer();
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "You Answered  $ans out of $totalquestion Questions correctly",
            style: GoogleFonts.pangolin(
              fontSize: 20,
              color: Color.fromARGB(255, 245, 218, 253),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          SummaryData(getSummaryData()),
          const SizedBox(height: 20),
          TextButton.icon(
              onPressed: resetquiz,
              icon: const Icon(Icons.refresh_rounded),
              label: Text("Reset Quiz",
                  style: GoogleFonts.pangolin(
                      fontSize: 20, fontWeight: FontWeight.bold))),
        ]),
      ),
    );
  }
}
