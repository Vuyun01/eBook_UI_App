import 'package:ebook_app/widgets/ratingcard.dart';
import 'package:ebook_app/widgets/roundedbutton.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'categorytitle.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryTitle(
              regularText: "Crushing & ", 
              boldText: "Influence",
              ktop: kDefaultPadding * 3,
            ),
            Padding(
              padding: EdgeInsets.only(left: kDefaultPadding),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                      child: Text(
                        "When the Earth was the flat and everyone wanted to win the game of the best people and winning an A game with all the things you have.",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12, color: kLightBlackColor, height: 1.4),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        padding: EdgeInsets.only(bottom: 5),
                        onPressed: (){}, 
                        icon: Icon(Icons.favorite_outline, color: kBlackColor,size: 30,)
                      ),
                      RatingCard(ratingNum: 4.8,)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding/2,),
              child: RoundedButton(text: "Read", onTap: (){}, horizontal: kDefaultPadding*3.6,),
            )
          ],
        )),
        Image.asset(AppAssets.book1)
      ],
    );
  }
}