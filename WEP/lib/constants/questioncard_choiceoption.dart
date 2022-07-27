import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'constants.dart';
import 'option_card_select.dart';
import 'package:provider/provider.dart';

// ignore_for_file:prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

int val = 0;

class TopCard extends StatefulWidget {
  TopCard({required this.question_text});
  String question_text;
  //int val = 0;
  @override
  State<TopCard> createState() => _TopCardState();
}

class _TopCardState extends State<TopCard> {
  //static int val = 0;
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          child: Container(
            decoration: BoxDecoration(
              gradient: kthemeGradient,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Center(
                //     child: Text(
                //       "Swipe for next post >>",
                //       style: TextStyle(
                //         fontWeight: FontWeight.w100,
                //         color: Colors.white,
                //       ),
                //     )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Text(widget.question_text),
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
                        optionCard(
                            title: "Responses",
                            onTap: () {
                              val = 0;
                              Provider.of<Data>(context, listen: false)
                                  .changedata(val);
                            }),
                        optionCard(
                            title: "Resources",
                            onTap: () {
                              val = 1;
                              Provider.of<Data>(context, listen: false)
                                  .changedata(val);
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        optionCard(
                            title: "Partners",
                            onTap: () {
                              val = 3;
                              Provider.of<Data>(context, listen: false)
                                  .changedata(val);
                              print(val);
                            }),
                        optionCard(
                            title: "Events",
                            onTap: () {
                              val = 2;
                              Provider.of<Data>(context, listen: false)
                                  .changedata(val);
                            }),
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

class heading extends StatelessWidget {
  heading({
    required this.heading_title,
  });
  String heading_title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        heading_title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
    );
  }
}
