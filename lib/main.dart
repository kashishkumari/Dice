import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.deepOrange,
      ),
        body: DicePage(),
    ),
   ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({ Key? key }) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextButton(
                  onPressed: (){
                    print('button has been pressed!');
                    setState(() {
                     number = Random().nextInt(6)+1; 
                    });
                  },
                  child: Image.asset('images/dice$number.png'),
                ),
              ),
          ),
        ],
      ),  
    );
  }
}
