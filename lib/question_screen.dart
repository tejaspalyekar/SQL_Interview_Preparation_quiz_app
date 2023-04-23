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
    return const Center(child: Text('HEY'));
  }
}
