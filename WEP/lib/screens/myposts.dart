import 'dart:math' as math;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:wep/constants/partnersCard.dart';
import '../constants/constants.dart';
import '../constants/comment_card.dart';
import '../constants/questioncard_choiceoption.dart';
import '../constants/responsesCard.dart';
import '../constants/eventsCard.dart';
// ignore_for_file:prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
class MyPostPage extends StatefulWidget {
  static String id = "mypost page";

  @override
  State createState() {
    return MyPostPageState();
  }
}

class MyPostPageState extends State<MyPostPage> {
  bool isList = false;
  List<Widget> reponses_lists = [
    //TopCard(question_text: loremIpsum),
    heading(heading_title: "Responses"),
    Responces_Card(respo_answer: loremIpsum,),
    Responces_Card(respo_answer: loremIpsum,),
    Responces_Card(respo_answer: loremIpsum,),
    Responces_Card(respo_answer: loremIpsum,),
  ];
  List<Widget> resources_lists = [
    //TopCard(question_text: loremIpsum),
    heading(heading_title: "Resource"),

    Responces_Card(respo_answer: loremIpsum,),
    Responces_Card(respo_answer: loremIpsum,),
    Responces_Card(respo_answer: loremIpsum,),
  ];
  List<Widget> events_lists = [
    //TopCard(question_text: loremIpsum),
    heading(heading_title: "Events"),
    Events_Card(imgurl: 'https://images.indianexpress.com/2020/04/online759.jpg'),
    Events_Card(imgurl: 'https://images.indianexpress.com/2020/04/online759.jpg'),
    Events_Card(imgurl: 'https://images.indianexpress.com/2020/04/online759.jpg'),
    Events_Card(imgurl: 'https://images.indianexpress.com/2020/04/online759.jpg'),

  ];
  List<Widget> partners_lists = [
    //TopCard(question_text: loremIpsum),
    heading(heading_title: "Partners"),
    Partners_Card(respo_answer: loremIpsum),
    Partners_Card(respo_answer: loremIpsum),
    Partners_Card(respo_answer: loremIpsum),
    Partners_Card(respo_answer: loremIpsum),
  ];

  @override
  Widget build(BuildContext context) {
    List<List<Widget>> current_screen = [reponses_lists,resources_lists,events_lists,partners_lists];
    return Scaffold(
      appBar: AppBar(
        title: Text("WEP"),
        backgroundColor: Color(0xFF050f2c),
        actions: [
          IconButton(onPressed: (){isList = isList? false: true;print(isList);Provider.of<isListData>(context,listen: false).changedata(isList);}, icon: Icon(FontAwesomeIcons.list,size: 18,)),
        ],
      ),
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.blue,
          useInkWell: true,
          hasIcon: false,
        ),
        child: Provider.of<isListData>(context).newisList?ListView(
          children: [
            Container(
              child: Text(loremIpsum,maxLines: 7,),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  //background color of box
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 5.0, // soften the shadow
                    spreadRadius: 1.0, //extend the shadow
                    offset: Offset(
                      5.0, // Move to right 10  horizontally
                      5.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
              ),
            ),
          ],
        ):
        PageView(scrollDirection: Axis.horizontal, children: [
          Column(
            children: [
              Container(
                child: SingleChildScrollView(child: TopCard(question_text: loremIpsum)),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.6,
                margin: EdgeInsets.only(bottom: 2),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: current_screen[Provider.of<Data>(context).val_provider],
                ),
              ),
            ],
          ),
          ListView(
            physics: const BouncingScrollPhysics(),
            children: current_screen[Provider.of<Data>(context).val_provider],
          ) ,
          ListView(
            physics: const BouncingScrollPhysics(),
            children: current_screen[Provider.of<Data>(context).val_provider],
          ),
          ListView(
            physics: const BouncingScrollPhysics(),
            children: current_screen[Provider.of<Data>(context).val_provider],
          ),
        ]),
      ),
    );
  }
}

const loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

