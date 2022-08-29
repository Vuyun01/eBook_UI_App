import 'package:flutter/material.dart';

import '../constants.dart';

class BookReadingCard extends StatelessWidget {
  const BookReadingCard({
    Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 100, width: size.width,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: kDefaultPadding, bottom: 5),
                            child: Text("Crushing & Influence", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          Text("Gary Venchuk", style: TextStyle(color: kLightBlackColor, fontSize: 12),),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text("Chapter 7 of 10", style: TextStyle(color: kLightBlackColor,fontSize: 14),),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: kDefaultPadding),
                      child: Image.asset(AppAssets.book1)
                    )
                  ],
                ),
              )
            ),
            Container(
              height: 7, width: size.width * 0.6,
              decoration: BoxDecoration(
                color: kProgressIndicator,
                borderRadius: BorderRadius.circular(7)
              ),
            )
          ],
        ),
      ),
    );
  }
}
