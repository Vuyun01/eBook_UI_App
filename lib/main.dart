import 'package:ebook_app/constants.dart';
import 'package:ebook_app/screens/home/home.dart';
import 'package:ebook_app/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eBook App',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: kBlackColor
        ),
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen() 
    );
  }
}


