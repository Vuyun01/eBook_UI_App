import 'package:flutter/material.dart';

import '../constants.dart';

class ChapterCard extends StatelessWidget {
  const ChapterCard({
    Key? key, required this.numChapter, required this.nameChapter, required this.subtitle, required this.onPress, 
  }) : super(key: key);

  final int numChapter;
  final String nameChapter;
  final String subtitle;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding/2),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, 
            vertical:  kDefaultPadding
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          backgroundColor: Colors.white,
          elevation: 7,
          shadowColor: kShadowColor
        ),
        onPressed: onPress, 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(color: kBlackColor, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: "Chapter $numChapter : $nameChapter\n",
                    style: TextStyle(fontSize: 18)
                  ),
                  TextSpan(
                    text: "$subtitle",
                    style: TextStyle(color: kLightBlackColor, fontSize: 14)
                  )
                ]
              )
            ),
            Icon(Icons.arrow_forward_ios, color: kBlackColor,)
          ],
        ),
      ),
    );
  }
}