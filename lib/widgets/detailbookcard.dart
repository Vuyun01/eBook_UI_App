import 'package:ebook_app/widgets/ratinganddesctiption.dart';
import 'package:ebook_app/widgets/ratingcard.dart';
import 'package:ebook_app/widgets/readbutton.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DetailBookCard extends StatelessWidget {
  const DetailBookCard({
    Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.25, width: size.width,
      // margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      // color: Colors.cyan,
      child: Stack(
        children: [
          Positioned(
            bottom: 0, left: 0,
            child: Container(
              height: 180,
              width: size.width * 0.9,
              // margin: EdgeInsets.only(left: kDefaultPadding + 10),
              padding: EdgeInsets.only(right: size.width * 0.32, top: 20,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 30,
                    color: kShadowColor,
                  )
                ]
              ),
              child: Container(
                padding: EdgeInsets.only(left: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
                      child: Text(
                        "New York Time Best For 11th March 2020",
                        style: TextStyle(fontSize: 10, color: kLightBlackColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "How to win friends & influence people",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 8),
                      child: Text(
                        "Harry Bern",
                        style: TextStyle(color: kLightBlackColor, fontSize: 13),
                      ),
                    ),
                    RatingAndDesciption()
                  ],
                ),
              ),
            )
          ),
          Positioned(
            right: 0, top: 0,
            child: Image.asset(AppAssets.book3, width: size.width*0.35,)
          ),
          Positioned(
            right: 0, bottom: 0,
            child: SizedBox(
              height: 40,
              width: size.width*0.3,
              child: ReadButton(readPress: (){}),
            )
          )
        ],
      ),
    );
  }
}

