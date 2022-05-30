import 'package:flutter/material.dart';



class OptionCard extends StatelessWidget {
  OptionCard({required this.colour,required this.cardChild,required this.onPress});

  Color colour;
  Widget cardChild;
  VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        decoration:
        BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}