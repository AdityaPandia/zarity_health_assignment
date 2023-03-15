import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ArticleTitle extends StatefulWidget {
  const ArticleTitle({Key? key}) : super(key: key);

  @override
  State<ArticleTitle> createState() => _ArticleTitleState();
}

class _ArticleTitleState extends State<ArticleTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          height: 13.w,
            width: 13.w,
            "images/article_title.png"),
        SizedBox(width:5.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
                "Article Title"),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: 65.w,
              child: Text(
                style: TextStyle(
                  color: Colors.white,

                ),
                  "Article excerpt description that runs two lines long shown here"),
            ),
          ],
        ),
      ],
    );
  }
}
