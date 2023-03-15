import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:sizer/sizer.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {

  bool? check1 = false;
  bool? check2=false;
  bool? check3=false;
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('taskList').snapshots();
  final Stream<QuerySnapshot> _usersStream2 = FirebaseFirestore.instance.collection('taskList2').snapshots();
  final Stream<QuerySnapshot> _usersStream3 = FirebaseFirestore.instance.collection('taskList3').snapshots();

  Widget taskList(BuildContext context, DocumentSnapshot document){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(


              document['task'],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(document['dueDate'],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          Text(document['CTA'],
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Checkbox(
              side:
              BorderSide(width: 2, color: Colors.white),
              value: check1, //unchecked
              onChanged: (bool? value){
                //value returned when checkbox is clicked
                setState(() {
                  check1 = value;
                });
              }
          )

        ],
      ),
    );

  }
  Widget taskList2(BuildContext context, DocumentSnapshot document){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(


              document['task'],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(document['dueDate'],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          Text(document['CTA'],
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Checkbox(
              side:
              BorderSide(width: 2, color: Colors.white),
              value: check2, //unchecked
              onChanged: (bool? value){
                //value returned when checkbox is clicked
                setState(() {
                  check2 = value;
                });
              }
          )

        ],
      ),
    );

  }
  Widget taskList3(BuildContext context, DocumentSnapshot document){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(


              document['task'],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(document['dueDate'],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          Text(document['CTA'],
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Checkbox(
              side:
              BorderSide(width: 2, color: Colors.white),
              value: check3, //unchecked
              onChanged: (bool? value){
                //value returned when checkbox is clicked
                setState(() {
                  check3 = value;
                });
              }
          )

        ],
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: Color(0xFF02012D),
        body: Column(
          children: [
            Flexible(
              child: StreamBuilder(
              stream: FirebaseFirestore.instance.collection('taskList').snapshots(),
    builder: (context,  AsyncSnapshot snapshot){
    if (!snapshot.hasData) return const Text ('Loading...');
    return ListView.builder(
    itemCount: snapshot.data!.docs.length,//snapshot.data!.docs.length,
    itemBuilder: (context,index)=>
    taskList(context,snapshot.data!.docs[index]),
    );
    },
      ),
            ),
            Flexible(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance.collection('taskList2').snapshots(),
                builder: (context,  AsyncSnapshot snapshot){
                  if (!snapshot.hasData) return const Text ('Loading...');
                  return ListView.builder(
                    itemCount: snapshot.data!.docs.length,//snapshot.data!.docs.length,
                    itemBuilder: (context,index)=>
                        taskList2(context,snapshot.data!.docs[index]),
                  );
                },
              ),
            ),
            Flexible(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance.collection('taskList3').snapshots(),
                builder: (context,  AsyncSnapshot snapshot){
                  if (!snapshot.hasData) return const Text ('Loading...');
                  return ListView.builder(
                    itemCount: snapshot.data!.docs.length,//snapshot.data!.docs.length,
                    itemBuilder: (context,index)=>
                        taskList3(context,snapshot.data!.docs[index]),
                  );
                },
              ),
            ),
          ],
        ),
    ),);
  }
}
