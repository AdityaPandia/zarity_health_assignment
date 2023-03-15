import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zarity_health_assignment/components/reusable_section_tile_1.dart';
import 'package:zarity_health_assignment/components/title_card.dart';

import '../components/article_title.dart';
import '../components/task_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //MyClass obj1= MyClass(x:3,y:4);;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFF02012D),
      body: SingleChildScrollView(

        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                TitleCard(),
                TaskList(),
                SizedBox(
                  height: 2.h,
                ),

                Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 19,
                  ),
                    'Section Title 1'),
                SizedBox(
                  height: 2.2.h,
                ),
                Row(
                  children: [

                    InkWell(
                      onTap: (){
                        showDialog<void>(
                          context: context,
                          barrierDismissible: false, // user must tap button!
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('CTA Section'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text('THIS IS CTA - 1'),

                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                        child: Container(child: ReusableSectionTile1(imgLoc: "images/cta1.png"))),
                    SizedBox(
                      width: 3.5.w,
                    ),
                    InkWell(
                      onTap: (){
                        showDialog<void>(
                          context: context,
                          barrierDismissible: false, // user must tap button!
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('CTA Section'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text('THIS IS CTA - 2'),

                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                        child: Container(child: ReusableSectionTile1(imgLoc: "images/cta2.png"))),
                    SizedBox(
                      width: 3.5.w,
                    ),
                    InkWell(
                        onTap: (){
                          showDialog<void>(
                            context: context,
                            barrierDismissible: false, // user must tap button!
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('CTA Section'),
                                content: SingleChildScrollView(
                                  child: ListBody(
                                    children: const <Widget>[
                                      Text('THIS IS CTA - 2'),

                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Container(child: ReusableSectionTile1(imgLoc: "images/cta3.png"))),
                  ],
                ),
                SizedBox(
                  height: 2.2.h,
                ),
                Text(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 19,
                    ),
                    'Section Title 2'),
                SizedBox(
                  height: 2.2.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color:Color(0xFF1B2152),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          height: 13.h,
                          width:22.w,
                          "images/section_tile_2.png",
                        ),
                      ),
                      SizedBox(
                        width: 2.w  ,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                              "Roe Rogan"),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Text(
                            style: TextStyle(
                              color: Colors.white,

                            ),
                              "Sub Text Shown Here"),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            style: TextStyle(
                              color:Colors.white,

                            ),
                              "Card Description"),
                        ],
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30,right:30 ,top:5 ,bottom: 5),
                          child: Text(
                            style:TextStyle(
                              color: Colors.white,
                            ),
                              "CTA"),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Color(0xFF1051E3),
                        ),
                      ),
                    ],

                  ),

                ),
                SizedBox(
                  height: 2.2.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xFF1B2152),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left:20,top:20),
                        child: Text(
                          "Card Title",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,
                            color: Colors.white,) ),
                      ),
                      SizedBox(
                        height: 2.2.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20),
                        child: ArticleTitle(),
                      ),
                      SizedBox(
                        height: 1.5.w,
                      ),
                      Divider(
                        color: Color(0xFF02012D),
                      ),
                      SizedBox(
                        height: 1.5.w,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20),
                        child: ArticleTitle(),
                      ),
                      SizedBox(
                        height: 1.5.w,
                      ),
                      Divider(
                        color: Color(0xFF02012D),
                      ),
                      SizedBox(
                        height: 1.5.w,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20),
                        child: ArticleTitle(),
                      ),
                      SizedBox(
                        height: 1.5.w,
                      ),
                      Divider(
                        color: Color(0xFF02012D),
                      ),
                      SizedBox(
                        height: 3.w,
                      ),
                      Center(
                        child: Container(
                          child: Padding(
                            padding:  EdgeInsets.only(left:8.w,right:8.w,top:2.w,bottom:2.w),
                            child: Text(
                              style:TextStyle(
                                color: Colors.white,
                              ),
                                "View More"),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF1051E3),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),

                      ),
                      SizedBox(
                        height: 3.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.w,
                ),
                      Container(
                        child:Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left:30,right:20,top:20,bottom:20),
                           child: Image.asset(
                             height:10.w,
                             width:10.w,

                               "images/bottom_bar/bottom_bar_1.png"),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left:20,right:20,top:20,bottom:20),
                           child: Image.asset(height:10.w,
                               width:10.w,


                               "images/bottom_bar/bottom_bar_2.png"),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left:20,right:20,top:20,bottom:20),
                           child: Image.asset(
                               height:10.w,
                               width:10.w,

                               "images/bottom_bar/bottom_bar_3.png"),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left:20,right:20,top:20,bottom:20),
                           child: Image.asset(

                               height:10.w,
                               width:10.w,
                               "images/bottom_bar/bottom_bar_4.png"),
                         ),
                       ],

                        ),
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color:Color(0xFF2E2C71),
                        ),
                      ),







              ],
            ),
          ),
        ),
      ),
    );
  }
}
