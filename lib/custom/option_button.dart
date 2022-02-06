import 'package:flutter/material.dart';
import 'package:real_estate_app/utils/widget_functions.dart';
import '../utils/constants.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  OptionButton({required this.width, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextButton(
        onPressed: () {}, 
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kCOLOR_DARK_BLUE),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: kCOLOR_WHITE,
            ),
            addHorizantalSpace(10),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: kCOLOR_WHITE),
            ),
          ],
        ),
      ),
    );
  }
}
