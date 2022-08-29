
import 'package:ebook_app/constants.dart';
import 'package:ebook_app/screens/home/home.dart';
import 'package:flutter/material.dart';


import '../../../widgets/roundedbutton.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.bitmap), fit: BoxFit.fill)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.displaySmall,
                children: [
                  TextSpan(text: "flamin"),
                  TextSpan(
                    text: "go.",
                    style: TextStyle(fontWeight: FontWeight.bold)
                  )
                ]
              )
            ),
          ),
          RoundedButton(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomeScreen()));
            },
            text: "Start reading",
          )
        ],
      ),
    );
  }
}

