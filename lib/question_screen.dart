import 'package:flutter/material.dart';

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
          ElevatedButton(onPressed: () {}, child: const Text("Answer 1")),
          ElevatedButton(onPressed: () {}, child: const Text("Answer 2")),
          ElevatedButton(onPressed: () {}, child: const Text("Answer 3"))
        ],
      ),
    );
  }
}
