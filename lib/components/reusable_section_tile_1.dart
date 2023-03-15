import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ReusableSectionTile1 extends StatelessWidget {

 ReusableSectionTile1({required this.imgLoc});

final String imgLoc;


  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color:Color(0xFF1B2152),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Image.asset(

          height: 13.h,
            width: 14.w,
            imgLoc),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// class ReusableSectionTile1 extends StatelessWidget {
//  ReusableSectionTile1({required this.imgLoc});
//
//   final String imgLoc;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color:Color(0xFF1B2152),
//         borderRadius: BorderRadius.circular(25.0),
//       ),
//       child: Image.asset(imgLoc),
//     );
//   }
// }
//

