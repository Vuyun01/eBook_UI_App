import 'package:ebook_app/widgets/ratingcard.dart';
import 'package:ebook_app/widgets/readbutton.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    Key? key, 
    required this.title, 
    required this.auth, 
    required this.image, 
    required this.rating, 
    required this.detailPress, 
    required this.readPress,
  }) : super(key: key);

  final String title;
  final String auth;
  final String image;
  final double rating;
  final VoidCallback detailPress;
  final VoidCallback readPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.cyan,
      width: 200, height: 280,
      margin: EdgeInsets.only(left: kDefaultPadding, bottom: kDefaultPadding*2),
      child: Stack(
        children: [
          Positioned(
            left: 0, bottom: 0, right: 0,
            child: Container(
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 20,
                    color: kShadowColor
                  )
                ]
              ),
            )
          ),
          Image.asset(image, width: 160,),
          Positioned(
            top: 60, right: 10,
            child: Column(
              children: [
                IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.favorite_outline, color: kBlackColor,)
                ),
                RatingCard(ratingNum: rating,)
              ],
            )
          ),
          Positioned(
            top: 180,
            child: Container(
              height: 100, width: 200,
              padding: EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: kBlackColor),
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold
                          )
                        ),
                        TextSpan(
                          text: "$auth", style: TextStyle(color: kLightBlackColor)
                        )
                      ]
                    )
                  ),
                  Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: detailPress,
                        child: Container(
                          width: 70,
                          child: Text("Details"),
                        ),
                      ),
                      Expanded(child: ReadButton(readPress: readPress))
                    ],
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}

