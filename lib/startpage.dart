import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.startFun, {super.key});

  final void Function() startFun;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset('assets/images/quiz-logo.png',
          width: 300, color: const Color.fromARGB(151, 255, 255, 255)),
      const SizedBox(
        height: 30,
      ),
      const Text('Learn Flutter The Fun Way!!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          )),
      const SizedBox(
        height: 20,
      ),
      OutlinedButton.icon(
          onPressed: startFun,
          icon: const Icon(Icons.arrow_right),
          label: const Text(
            "start quize",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ))
    ]));
  }
}
