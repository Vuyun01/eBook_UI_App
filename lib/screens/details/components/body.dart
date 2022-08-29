import 'package:ebook_app/constants.dart';
import 'package:ebook_app/widgets/bookreadingcard.dart';
import 'package:ebook_app/widgets/categorytitle.dart';
import 'package:ebook_app/widgets/detailbookcard.dart';
import 'package:ebook_app/widgets/ratinganddesctiption.dart';
import 'package:ebook_app/widgets/roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../widgets/bookinfo.dart';
import '../../../widgets/chaptercard.dart';
import '../../../widgets/ratingcard.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                // padding: EdgeInsets.only(left: kDefaultPadding),
                height: size.height * 0.45,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppAssets.background),fit: BoxFit.fitWidth),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  )
                ),
                child: BookInfo(),
              ),
              Container(
                // color: Colors.cyan,
                padding: EdgeInsets.only(top: size.height * 0.4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(5, (index) => ChapterCard(
                      onPress: (){},
                      numChapter: index + 1,
                      nameChapter: "Money",
                      subtitle: "Life is about change",
                    )),
                    CategoryTitle(
                      ktop: kDefaultPadding,
                      kbottom: kDefaultPadding/2,
                      regularText: "You might also ", 
                      boldText: "like..."
                    ),
                    DetailBookCard(),
                    SizedBox(height: size.width * 0.101,)
                  ]
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}



