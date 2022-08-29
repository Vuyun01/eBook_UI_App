import 'package:flutter/material.dart';

import '../constants.dart';

class ReadButton extends StatelessWidget {
  const ReadButton({
    Key? key,
    required this.readPress,
  }) : super(key: key);

  final VoidCallback readPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: readPress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding/2),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          )
        ),
        child: Text(
          "Read", 
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

