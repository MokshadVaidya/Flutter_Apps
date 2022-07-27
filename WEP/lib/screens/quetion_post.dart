import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wep/screens/myposts.dart';
import '../constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore_for_file:prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
class PostQuestion extends StatefulWidget {
  const PostQuestion({Key? key}) : super(key: key);
  static String id = "question post page";
  @override
  State<PostQuestion> createState() => _PostQuestionState();
}

class _PostQuestionState extends State<PostQuestion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("WEP"),
          backgroundColor: Color(0xFF050f2c),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: kthemeGradient,
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  margin: EdgeInsets.only(left: 5,right: 5,top: MediaQuery.of(context).size.height*0.2,bottom: MediaQuery.of(context).size.height*0.1),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type your question here...",
                    suffixIcon: IconButton(icon: Icon(FontAwesomeIcons.microphone),onPressed: (){},)),
                  ),
              ),
              ButtonCard(text: "Post", onTap: (){
                Navigator.pushNamed(context, MyPostPage.id);
              }),
              ButtonCard(text: "Cancel", onTap: (){}),

            ],
          ),
        ),
      ),
    );
  }
}

class ButtonCard extends StatelessWidget {
  final String text;
  final void Function() onTap;
  ButtonCard({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Material(
        color: Color(0xFFA0468C),
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
