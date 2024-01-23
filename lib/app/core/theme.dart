import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

const primary = Color(0xFFB9904A);
const secondary = Color(0xFFDCB5A1);
const vanilla = Color(0xFFF3E5AB);
const red = Color.fromRGBO(236, 66, 96, 1);
const red10 = Color.fromRGBO(236, 66, 96, .1);
const green = Color(0xFF369B43);
const green98 = Color.fromRGBO(54, 155, 67, .98);
const green12 = Color.fromRGBO(54, 155, 67, .12);
const black = Color.fromRGBO(0, 0, 0, 1);
const black10 = Color.fromRGBO(0, 0, 0, .1);
const black08 = Color.fromRGBO(0, 0, 0, .08);
const grey = Color(0xFFD9D9D9);
const grey40 = Color.fromRGBO(217, 217, 217, .4);
const greyIcon = Color.fromRGBO(30, 30, 30, .4);
const greyText = Color.fromRGBO(99, 98, 98, 1);
const greyHint = Color.fromRGBO(191, 186, 186, 1);
const purple = Color(0xFF2E398F);
const purple50 = Color.fromRGBO(46, 57, 143, .5);
const purple35 = Color.fromRGBO(46, 57, 143, .35);
const purple20 = Color.fromRGBO(46, 57, 143, .2);
const purple15 = Color.fromRGBO(46, 57, 143, .15);
const purple10 = Color.fromRGBO(46, 57, 143, .10);
const purple04 = Color.fromRGBO(46, 57, 143, .04);
const white = Color(0xFFFFFFFF);
const white20 = Color.fromRGBO(255, 255, 255, .2);
const borderColor = Color.fromRGBO(217, 217, 217, .5);
const shadowColor = Color.fromRGBO(224, 224, 236, .3);
const blue = Color(0xff3c6fd1);

const BoxShadow shadowSmooth = BoxShadow(
  color: Color.fromRGBO(186, 190, 220, .15),
  blurRadius: 5,
  offset: Offset(0, 2),
);

class CFonts {
  static final _weightList = <FontWeight>[
    FontWeight.w100,
    FontWeight.w200,
    FontWeight.w300,
    FontWeight.w400,
    FontWeight.w500,
    FontWeight.w600,
    FontWeight.w700,
    FontWeight.w800,
    FontWeight.w900,
  ];

  static TextStyle inter(int weight, double size,
      [Color? color, TextDecoration? decoration]) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        fontWeight: _weightList[weight - 1],
        fontSize: size,
        color: color,
        decoration: decoration,
      ),
    );
  }

  static TextStyle dmSans(int weight, double size,
      [Color? color, TextDecoration? decoration]) {
    return GoogleFonts.dmSans(
      textStyle: TextStyle(
        fontWeight: _weightList[weight - 1],
        fontSize: size,
        color: color,
        decoration: decoration,
      ),
    );
  }
}

final lightTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: _lightAppBar,
  scaffoldBackgroundColor: white,
  radioTheme: _lightRadioTheme,
  textTheme: GoogleFonts.interTextTheme(),
);

final _lightRadioTheme = RadioThemeData(
  fillColor: MaterialStateProperty.resolveWith(
    (states) => states.contains(MaterialState.selected) ? purple : borderColor,
  ),
);

const _lightAppBar = AppBarTheme(
  backgroundColor: Colors.transparent,
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
  ),
);

final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: CFonts.inter(5, 18),
  decoration: BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    border: Border.all(color: borderColor),
  ),
);
final focusedPinTheme = defaultPinTheme.copyWith(
  decoration: BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    border: Border.all(color: primary),
  ),
);
