import 'package:ebook_app/constants.dart';
import 'package:ebook_app/model/book.dart';
import 'package:ebook_app/screens/details/details.dart';
import 'package:ebook_app/widgets/bookcard.dart';
import 'package:ebook_app/widgets/readbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../widgets/bookreadingcard.dart';
import '../../../widgets/categorytitle.dart';
import '../../../widgets/detailbookcard.dart';
import '../../../widgets/ratingcard.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.main_page_bg),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topRight
        )
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryTitle(
              regularText: "What are you\nreading ",
              boldText: "today",
              ktop: kDefaultPadding,
              kbottom: kDefaultPadding,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [   
                  //used spread operator for List.generate
                  ...List.generate(books.length, (index) => BookCard(
                    title: books[index].title, 
                    auth: books[index].auth, 
                    image: books[index].image, 
                    rating: books[index].rating, 
                    detailPress: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailScreen()));
                    }, 
                    readPress: (){}
                  )),
                  SizedBox(width: kDefaultPadding,)
                ]
              ),
            ),
            CategoryTitle(
              regularText: "Best of the ", 
              boldText: "day"
            ),
            DetailBookCard(),
            CategoryTitle(
              regularText: "Continue ", 
              boldText: "reading...",
              ktop: kDefaultPadding,
              kbottom: kDefaultPadding/2,
            ),
            BookReadingCard(),
          ],
        ),
      ),
    );
  }
}






// SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: List.generate(books.length, (index) => BookCard(
//                 title: books[index].title, 
//                 auth: books[index].auth, 
//                 image: books[index].image, 
//                 rating: books[index].rating, 
//                 detailPress: (){}, 
//                 readPress: (){}
//               )),
//             ),
//           )

