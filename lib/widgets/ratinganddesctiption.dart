import 'package:ebook_app/widgets/ratingcard.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RatingAndDesciption extends StatelessWidget {
  const RatingAndDesciption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: RatingCard(ratingNum: 4.8),
        ),
        Expanded(
          child: Text(
            "When the Earth was the flat and everyone wanted to win the game of the best people...",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12, color: kLightBlackColor),
          )
        )
      ],
    );
  }
}