import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    Key? key, 
    required this.regularText, 
    required this.boldText, 
    this.ktop = 0, 
    this.kleft = 20, 
    this.kbottom = 0, 
    this.kright = 0,
  }) : super(key: key);

  final String regularText;
  final String boldText;
  final double ktop;
  final double kleft;
  final double kbottom;
  final double kright;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(kleft, ktop, kright, kbottom),
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.headline4,
          children: [
            TextSpan(text: regularText),
            TextSpan(text: boldText, style: TextStyle(fontWeight: FontWeight.bold))
          ]
        )
      ),
    );
  }
}