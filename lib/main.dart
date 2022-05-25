import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void handleChangeLeftDiceNumber() {
    setState(() {
      leftDiceNumber = handleRandomDiceNumber();
    });
  }

  void handleChangeRightDiceNumber() {
    setState(() {
      rightDiceNumber = handleRandomDiceNumber();
    });
  }

  int handleRandomDiceNumber() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    handleChangeLeftDiceNumber();
                    handleChangeRightDiceNumber();
                  },
                  child: Image.asset("images/dice${leftDiceNumber}.png"),
                ),
                flex: 1,
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    handleChangeLeftDiceNumber();
                    handleChangeRightDiceNumber();
                  },
                  child: Image.asset("images/dice${rightDiceNumber}.png"),
                ),
                flex: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
