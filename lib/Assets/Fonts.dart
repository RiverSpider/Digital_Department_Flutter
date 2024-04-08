import 'package:flutter/material.dart';

class FontThemes {
  static const BoxShadow backgroundshadowtop = BoxShadow(
    color: Color(0x14000014),
    blurRadius: 16,
    offset: Offset(0, 4),
    spreadRadius: 0,
  );

  static const BoxShadow cardshadow1 = BoxShadow(
    color: Color(0x114F4F6C),
    blurRadius: 14,
    offset: Offset(0, 8),
    spreadRadius: 0,
  );

  static const BoxShadow cardshadow2 = BoxShadow(
    color: Color(0x14000000),
    blurRadius: 10,
    offset: Offset(0, 2),
    spreadRadius: 0,
  );

  static const TextStyle cardheader = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontFamily: 'SF Pro Text',
  fontWeight: FontWeight.w500,
  letterSpacing: -0.40,
  );

  static const TextStyle carddescription = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.41,
  );

  static TextStyle cardsubdescription = TextStyle(
    color: Colors.black.withOpacity(0.550000011920929),
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.41,
  );

  static const TextStyle disclosureheader = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.40,
  );

  static TextStyle disclosuresubdes = TextStyle(
    color: Colors.black.withOpacity(0.550000011920929),
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.41,
  );

  static ShapeDecoration chipshape = ShapeDecoration(
    color: Colors.black.withOpacity(0.07999999821186066),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );

  static TextStyle chiptext = const TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    height: 0.09,
    letterSpacing: -0.41,
  );

  static TextStyle sectiontitle = const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w700,
    letterSpacing: -0.70,
  );

  static TextStyle sectionsubtitle = TextStyle(
    color: Colors.black.withOpacity(0.550000011920929),
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.42,
  );

  static BoxShadow avatarshadow = const BoxShadow(
    color: Color(0x7A1D1D25),
    blurRadius: 24,
    offset: Offset(0, 16),
    spreadRadius: -16,
  );

  static TextStyle usernamestyle = const TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w700,
    height: 0.06,
  );

  static TextStyle activetab = const TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static SizedBox spacersmall = const SizedBox(height: 10, width: 10,);
  static SizedBox spacermedium = const SizedBox(height: 20);
  static SizedBox spacerlarge = const SizedBox(height: 35);

  static Divider divider = const Divider(
    color: Color(0xFFdcdcdc),
    height: 1,
    indent: 82,
  );
}