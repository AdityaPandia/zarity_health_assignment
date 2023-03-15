import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'dialog_box.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        Navigator.push(context, MaterialPageRoute(builder: (context)=>DialogBox()));
      },
      child: Container(

        decoration: BoxDecoration(
          color:Color(0xFF1B2152),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 5.w,
            ),
           Image.asset(
             height: 11.h,
               width:13.w,
               "images/task_list.png"),
            SizedBox(
              width: 5.w,
            ),
            Container(
              width: 63.w,
              child: Text(
                style: TextStyle(
                  color: Colors.white,
                ),
                  "Please complete your profile to book consultations"),
            ),

          ],
        ),


      ),
    );
  }
}
