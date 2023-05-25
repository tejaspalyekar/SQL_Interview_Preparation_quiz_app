import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryData extends StatelessWidget {
  const SummaryData(this.summarydata, {super.key});
  final List<Map<String, Object>> summarydata;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summarydata.map(
          (data) {
            return Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: data['correct_answer'] == data['user_answer']
                        ? const Color.fromARGB(255, 204, 255, 121)
                        : const Color.fromARGB(255, 250, 102, 102),
                  ),
                  child: Text(((data['question_index'] as int) + 1).toString(),
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.ubuntu(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        data['user_answer'] as String,
                        style: GoogleFonts.ubuntu(
                            color: Color.fromARGB(255, 5, 126, 41),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Ans = " + (data['correct_answer'] as String),
                        style: GoogleFonts.ubuntu(
                            color: Color.fromARGB(255, 255, 72, 0),
                            fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20)
                    ],
                  ),
                ),
              ],
            );
          },
        ).toList()),
      ),
    );
  }
}
