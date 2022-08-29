import 'package:flutter/material.dart';

import '../constants.dart';

class RatingCard extends StatelessWidget {
  const RatingCard({
    Key? key, required this.ratingNum,
  }) : super(key: key);

  final double ratingNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kDefaultPadding/2),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 7),
            blurRadius: 10,
            color: kShadowColor
          )
        ]
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Icon(Icons.star, color: kIconColor, size: 15,),
          ),
          Text(
            "$ratingNum",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          )  
        ],
      ),
    );
  }
}