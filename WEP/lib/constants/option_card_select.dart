import 'package:flutter/material.dart';



// class OptionCard extends StatelessWidget {
//   OptionCard({required this.colour,required this.cardChild,required this.onPress});
//
//   Color colour;
//   Widget cardChild;
//   VoidCallback onPress;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPress,
//       child: Container(
//         child: cardChild,
//         margin: EdgeInsets.all(10),
//         padding: EdgeInsets.all(5),
//         decoration:
//         BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
//       ),
//     );
//   }
// }
class optionCard extends StatelessWidget {
  optionCard({
    required this.title,
    required this.onTap
  });
  String title;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}