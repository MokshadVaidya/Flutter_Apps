import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'constants.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore_for_file:prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
// class Partners_Card extends StatelessWidget {
//   //const Partners_Card({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
class Partners_Card extends StatelessWidget {
  Partners_Card({required this.respo_answer});
  String respo_answer;
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      initialExpanded: true,
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: kthemeGradient
              ),
              child: Row(children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.height * 0.06,
                ),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Partner Name Comes Here!!",
                      softWrap: true,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.white
                      ),
                    ),
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
                      "Details",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                      // style: Theme.of(context).textTheme.body2,
                    )),
                collapsed: collapsed_content(isExpanded: false,),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    collapsed_content(isExpanded: true,)
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

class collapsed_content extends StatelessWidget {
  collapsed_content({
    required this.isExpanded,
  });
  bool isExpanded;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        detailCard(
            detail_title: "CONTACT PERSON :",
            detail_value: "Rajat Arora",isExpanded: isExpanded,),
        detailCard(
            detail_title: "CONTACT NO :",
            detail_value: "917995009419",
        isExpanded: isExpanded,),
        detailCard(
            detail_title: "EMAIL :",
            detail_value: " rajarora@fb.com",
        isExpanded: isExpanded,),
        detailCard(
            detail_title: "ADDRESS :",
            detail_value:
                "Parsvnath Capital Towers, Unit 1, Level 7, Bhai Veer Singh Marg, Gole Market  New Delhi Delhi 110001",
        isExpanded: isExpanded,),
        detailCard(
            detail_title: "SECTOR OF BUSINESS :",
            detail_value: "Social Media",
        isExpanded: isExpanded,),
        detailCard(
            detail_title: "SERVICES PROVIDED :", detail_value: '''1. Business in a box tool kit (Digital)
            
2.Access to Facebook Digital Skilling Hub:-
  * Curriculum on Digital Marketing Skills | Access to Markets and information
  * Curriculum on Online Safety & Privacy
  
3.Access to regional workshops (offline)

''',
        isExpanded: isExpanded,),
        detailCard(
            detail_title: "DESCRIPTION :",
            detail_value:'''Founded in 2004, Facebook’s mission is to give people the power to build community and bring the world closer together. People use our products to stay connected with friends and family, to discover what’s going on in the world, and to share and express what matters to them.
            
1.59 billion daily active users on Facebook on average (for June 2019)

2.41 billion monthly active users on Facebook (as of June 30, 2019)

3.More than 2.1 billion people use Facebook, Instagram, WhatsApp, or Messenger every day on average

4.More than 2.7 billion people use at least one of our family of services each month''',
        isExpanded: isExpanded,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon: Icon(FontAwesomeIcons.facebook),onPressed: (){},),
              IconButton(icon: Icon(FontAwesomeIcons.twitter),onPressed: (){},),
              IconButton(icon: Icon(FontAwesomeIcons.linkedin),onPressed: (){},)
            ],
          ),
        )
      ],
    );
  }
}

class detailCard extends StatelessWidget {
  detailCard({required this.detail_title, required this.detail_value,required this.isExpanded});
  String detail_title;
  String detail_value;
  bool isExpanded;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            detail_title,
            style: TextStyle(color: Colors.grey),
          ),
          Flexible(
            child: Text(
              detail_value,
              style: TextStyle(fontSize: 15),
              softWrap: true,
              maxLines: isExpanded?3:50,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
