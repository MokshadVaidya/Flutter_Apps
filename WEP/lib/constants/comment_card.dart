import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  final String text;
  final void Function() onTap;
  ButtonCard({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onTap,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.colour, required this.cardChild, required this.toDo});
  final Color colour;
  final Widget cardChild;
  final void Function() toDo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toDo,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(15),
      ),
    );
  }
}
