class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> shuffleit() {
    final shuffleans = List.of(answers);
    shuffleans.shuffle();
    return shuffleans;
  }
}
