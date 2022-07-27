import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:wep/constants/constants.dart';
// ignore_for_file:prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
class Card_eve extends StatelessWidget {
  Card_eve({required this.imgurl});
  String imgurl;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(imgurl,fit: BoxFit.fill,),
      height: 150,
      margin: EdgeInsets.only(
          top: 35,left: MediaQuery.of(context).size.width * 0.06,right: MediaQuery.of(context).size.width * 0.06),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
    );
  }
}
class Events_Card extends StatelessWidget {
  Events_Card({required this.imgurl});
  String imgurl;
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
                  height: MediaQuery.of(context).size.width * 0.3,
                  child: Image.network(imgurl,fit: BoxFit.cover,),
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
                          "Title Of Event",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                        )),
                    collapsed: Text(
                      "Short Brief of Event",
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
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
