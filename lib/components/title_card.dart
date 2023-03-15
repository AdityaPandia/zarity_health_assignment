import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zarity_health_assignment/screens/home_screen.dart';
import 'package:zarity_health_assignment/screens/settings_screen.dart';
class TitleCard extends StatefulWidget {
  const TitleCard({Key? key}) : super(key: key);

  @override
  State<TitleCard> createState() => _TitleCardState();
}

class _TitleCardState extends State<TitleCard> {
  @override
  Widget build(BuildContext context) {
    return
       Row(
          children: [

InkWell(
  onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsScreen()));
  },
  child:   Container(
    child:   Image.asset(
      width: 20.w,
          height: 20.h,
          "images/title_card/title_card.png"),
  ),
),
            SizedBox(
              width: 5.w,
            ),
            Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                    "Good afternoon"),
                SizedBox(
                  height: 1.w,
                ),
                Text(style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),"John Doe"),
              ],
            ),
            SizedBox(
              width: 20.w,

            ),
            Image.asset(
              width:5.w,
                height:5.w,
                "images/message.png"),
            SizedBox(
              width: 5.w,
            ),
            Icon(
              Icons.notifications_rounded,
                  color:Colors.white,
            ),

          ],

        );

  }
}
