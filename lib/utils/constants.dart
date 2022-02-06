import 'package:flutter/material.dart';

const kCOLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
const kCOLOR_GREY = Color.fromRGBO(141, 141, 141, 1.0);

const kCOLOR_WHITE = Colors.white;
const kCOLOR_DARK_BLUE = Color.fromRGBO(20, 25, 45, 1.0);

final double kSpace = 25;
final EdgeInsets kSidePadding = EdgeInsets.symmetric(horizontal: kSpace);

const String kFontFamilyMontserrat =  "Montserrat";

const TextTheme kTEXT_THEME_DEFAULT = TextTheme(
  headline1: TextStyle(
    color: kCOLOR_BLACK,
    fontWeight: FontWeight.w700,
    fontSize: 26,
    fontFamily: kFontFamilyMontserrat
  ),
  headline2: TextStyle(
    color: kCOLOR_BLACK,
    fontWeight: FontWeight.w700,
    fontSize: 22,
    fontFamily: kFontFamilyMontserrat
  ),
  headline3: TextStyle(
    color: kCOLOR_BLACK,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    fontFamily: kFontFamilyMontserrat
  ),
  headline4: TextStyle(
    color: kCOLOR_BLACK,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    fontFamily: kFontFamilyMontserrat
  ),
  headline5: TextStyle(
    color: kCOLOR_BLACK,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    fontFamily: kFontFamilyMontserrat
  ),
  headline6: TextStyle(
    color: kCOLOR_BLACK,
    fontWeight: FontWeight.w700,
    fontSize: 12,
    fontFamily: kFontFamilyMontserrat
  ),
  bodyText1: TextStyle(
    color: kCOLOR_BLACK,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.5,
    fontFamily: kFontFamilyMontserrat
  ),
  bodyText2: TextStyle(
    color: kCOLOR_GREY,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.5,
    fontFamily: kFontFamilyMontserrat
  ),
  subtitle1: TextStyle(
    color: kCOLOR_BLACK,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: kFontFamilyMontserrat
  ),
  subtitle2: TextStyle(
    color: kCOLOR_GREY,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: kFontFamilyMontserrat
  ),
);

const TextTheme kTEXT_THEME_SMALL = TextTheme(
  headline1: TextStyle(
    color: kCOLOR_BLACK,
    fontWeight: FontWeight.w700,
    fontSize: 22,
    fontFamily: kFontFamilyMontserrat
  ),
  headline2: TextStyle(
    color: kCOLOR_BLACK,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    fontFamily: kFontFamilyMontserrat
  ),
  headline3: TextStyle(
    color: kCOLOR_BLACK,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    fontFamily: kFontFamilyMontserrat
  ),
  headline4: TextStyle(
    color: kCOLOR_BLACK,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    fontFamily: kFontFamilyMontserrat
  ),
  headline5: TextStyle(
    color: kCOLOR_BLACK,
    fontWeight: FontWeight.w700,
    fontSize: 12,
    fontFamily: kFontFamilyMontserrat
  ),
  headline6: TextStyle(
    color: kCOLOR_BLACK,
    fontWeight: FontWeight.w700,
    fontSize: 10,
    fontFamily: kFontFamilyMontserrat
  ),
  bodyText1: TextStyle(
    color: kCOLOR_BLACK,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.5,
    fontFamily: kFontFamilyMontserrat
  ),
  bodyText2: TextStyle(
    color: kCOLOR_GREY,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.5,
    fontFamily: kFontFamilyMontserrat
  ),
  subtitle1: TextStyle(
    color: kCOLOR_BLACK,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontFamily: kFontFamilyMontserrat
  ),
  subtitle2: TextStyle(
    color: kCOLOR_GREY,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontFamily: kFontFamilyMontserrat
  ),
);
