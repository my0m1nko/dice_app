import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
   DiceRoller({super.key});


  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 2;
  // var activeDiceImage = 'assets/images/dice-2.png';

 void  rollDice(){
  // var num = Random().nextInt(6) + 1;
   setState(() {
     // activeDiceImage = 'assets/images/dice-$num.png';
     currentDice = Random().nextInt(6)+1;

   });
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          // activeDiceImage,
          'assets/images/dice-$currentDice.png',
          width: 200,),
        const SizedBox(height: 20,),
        TextButton(
            onPressed: rollDice,

            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                    fontSize: 28
                )
            ),
            child: const Text('DICE'))
      ],
    );
  }
}
