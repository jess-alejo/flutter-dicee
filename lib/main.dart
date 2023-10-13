import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Dicee'),
          ),
          backgroundColor: const Color.fromARGB(255, 218, 0, 55),
        ),
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(255, 146, 93, 255),
                  Color.fromARGB(255, 255, 116, 49)
                ],
              ),
            ),
            child: const DicePage()),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = 3;
                  print("Left button got clicked");
                });
              },
              child: Image.asset("assets/images/dice$leftDiceNumber.png"),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                print("Right button got clicked");
              },
              child: Image.asset("assets/images/dice1.png"),
            ),
          ),
        ],
      ),
    );
  }
}
