import 'package:flutter/material.dart';

bool isChecked = false;

class TaskTile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("This is a task"),
      trailing: TaskCheckBox(),
    );
  }
}

class TaskCheckBox extends StatefulWidget {

  @override
  _TaskCheckBoxState createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox>{

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (newValue){
        setState((){
          isChecked = true;
        });
      },
      activeColor: Colors.lightBlueAccent,
    );
  }


}

