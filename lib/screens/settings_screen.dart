import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List listOfMaps = [];
  @override
  void initState() {
    super.initState();
    listOfMaps.add({'name': 'menu 1', 'action': _dashboardClick});  // () removed
    listOfMaps.add({'name': 'menu 2', 'action': _aboutUsClick}); // () removed
  }

void _dashboardClick() {
    print('you clicked on _dashboardClick button');

  }

void  _aboutUsClick() {
    print('you clicked on _aboutUsClick button');

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF02012D),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),
                    "Settings"),
                Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(right:15,top:35,bottom: 15),
                      child: Image.asset(
                        height:30.w,
                          width:30.w,

                          "images/title_card/title_card.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                              style: TextStyle(fontSize: 20 , color: Colors.white,fontWeight: FontWeight.bold ),
                              "John Doe"),
                        ),

                        Text(
                            style: TextStyle(color: Colors.white, ),
                            "Profile"),
                      ],
                    ),
                  ],

                ),
                SizedBox(
                  height: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right:20),
                              child: Icon(
                                color:Colors.white,
                                  size: 40,
                                  Icons.person),
                            ),
                            Text( style: TextStyle(fontSize: 23,color: Colors.white, ),
                                "Profile"),
                          ],
                        ),
                        SizedBox(
                          height: 10.w,
                        ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            color:Colors.white,
                              size: 40,
                              Icons.notifications_rounded),
                        ),
                        Text( style: TextStyle(fontSize: 23,color: Colors.white, ),
                            "Notifications"),
                      ],
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                              color:Colors.white,
                              size: 40,
                              Icons.security),
                        ),
                        Text( style: TextStyle(fontSize: 23,color: Colors.white, ),
                            "Security"),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
