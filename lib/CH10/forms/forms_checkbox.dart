import 'package:flutter/material.dart';


class FormCheckBox extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final ValueChanged checkBoxCallBack;
  
  FormCheckBox({required this.isChecked, required this.taskTitle, required this.checkBoxCallBack});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        color: Colors.lightGreen.shade50,
        child: CheckboxListTile(
          title: Text(taskTitle),
          value:isChecked,
          onChanged:checkBoxCallBack,
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}

