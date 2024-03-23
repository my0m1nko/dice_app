import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

// Alignment? startAlignment;
// Alignment? endAlignment;

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  // GradientContainer({key}):super(key: key);

  // const GradientContainer( {required this.colors,super.key});
  // final List<Color>  colors;
  //
 const  GradientContainer(this.color1, this.color2,  {super.key});

  const  GradientContainer.purple({super.key}): color1 = Colors.deepPurple, color2 = Colors.indigo;


  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          gradient: LinearGradient(
              // colors: colors,
            colors: [color1,color2],
              begin: startAlignment,
              end: endAlignment,
          )
      ),
      child: Center(
          child: Center(
            child: DiceRoller(),
          ),
      ),
    );
  }

}