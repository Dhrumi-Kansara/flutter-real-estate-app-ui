import 'package:flutter/material.dart';
import 'dart:ui';

import './screens/landing_screen.dart';
import './utils/constants.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    double width = window.physicalSize.width;  

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Real Estate App',
      theme: ThemeData(
          scaffoldBackgroundColor: kCOLOR_WHITE,
          colorScheme: ThemeData.light().colorScheme.copyWith(
          primary: kCOLOR_WHITE,
          secondary: kCOLOR_DARK_BLUE,
        ),
        textTheme: width < 500 ? kTEXT_THEME_SMALL : kTEXT_THEME_DEFAULT, 
      ), 
      home: LandingSCreen(),
    );
  }
} 