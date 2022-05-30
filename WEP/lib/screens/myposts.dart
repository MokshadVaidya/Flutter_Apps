import 'dart:math' as math;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../constants/comment_card.dart';

// ignore_for_file:prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
class MyPostPage extends StatefulWidget {
  @override
  State createState() {
    return MyPostPageState();
  }
}

class MyPostPageState extends State<MyPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WEP"),
        backgroundColor: Color(0xFF050f2c),
      ),
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.blue,
          useInkWell: true,
          hasIcon: false,
        ),
        child: PageView(
            scrollDirection: Axis.horizontal,
            children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            children: <Widget>[
              TopCard(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Responses",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Card1(),
              Card1(),
              Card1(),
              Card1(),
            ],
          ),
              ListView(
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  TopCard(),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Responses",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Card1(),
                  Card1(),
                  Card1(),
                  Card1(),
                ],
              ),
              ListView(
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  TopCard(),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Responses",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Card1(),
                  Card1(),
                  Card1(),
                  Card1(),
                ],
              ),
              ListView(
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  TopCard(),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Responses",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Card1(),
                  Card1(),
                  Card1(),
                  Card1(),
                ],
              ),
        ]),

      ),
    );
  }
}

const loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              padding: EdgeInsets.all(10),
              child: Row(children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Name Comes Here!!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Posted on May 22, 2022 @08:00 PM",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                  tapBodyToExpand: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "ExpandablePanel",
                      // style: Theme.of(context).textTheme.body2,
                    )),
                collapsed: Text(
                  loremIpsum,
                  softWrap: true,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    for (var _ in Iterable.generate(5))
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            loremIpsum,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class TopCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          child: Container(
            decoration: BoxDecoration(
              gradient: kthemeGradient,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                    child: Text(
                  "Swipe for next post >>",
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                  ),
                )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Text(loremIpsum),
                )
              ],
            ),
          ),
        ),
        ScrollOnExpand(
          scrollOnExpand: false,
          scrollOnCollapse: false,
          child: ExpandablePanel(
            theme: const ExpandableThemeData(
              headerAlignment: ExpandablePanelHeaderAlignment.center,
              tapBodyToCollapse: false,
              tapBodyToExpand: true,
            ),
            header: Container(
              child: Icon(
                Icons.expand_more,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                gradient: kthemeGradient,
              ),
            ),
            collapsed: Container(
              decoration: BoxDecoration(
                gradient: kthemeGradient,
              ),
            ),
            expanded: SizedBox(
              height: 150,
              child: Container(
                decoration: BoxDecoration(
                  gradient: kthemeGradient,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Text(
                                "Responses",
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
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Text(
                                "Resources",
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
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Text(
                                "Partners",
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
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Text(
                                "Events",
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
            builder: (_, collapsed, expanded) {
              return Expandable(
                collapsed: collapsed,
                expanded: expanded,
                theme: const ExpandableThemeData(crossFadePoint: 0),
              );
            },
          ),
        ),
      ],
    ));
  }
}
