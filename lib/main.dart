import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime[600],
        appBar: AppBar(
          title:Text('Dice_Game'),
          backgroundColor:Colors.lime[500],
        ),
        body: DicePage(),
      ),
    )
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber= Random().nextInt(6) + 1;
      rightDiceNumber= Random().nextInt(6) + 1;

    });
  }

  Widget build(BuildContext context){

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: ElevatedButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image.asset('img/Alea_$leftDiceNumber.png'),),
          ),
          Expanded(
            child:ElevatedButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image.asset('img/Alea_$rightDiceNumber.png'),),
          ),
        ],
      ),
    );
  }
}
