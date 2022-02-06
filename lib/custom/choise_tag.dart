import 'package:flutter/material.dart';
import 'package:real_estate_app/utils/constants.dart';

class ChoiseTag extends StatelessWidget {
  
  final String text;

  ChoiseTag({required this.text});

  @override
  Widget build(BuildContext context) {

    final ThemeData themeData = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kCOLOR_GREY.withAlpha(25), 
      ), 
      margin: EdgeInsets.only(left: kSpace),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      child: Text(text, style: themeData.textTheme.headline5,),
    );
  }
}