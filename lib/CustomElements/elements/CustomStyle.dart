
import 'package:flutter/material.dart';

class CustomStyles{
  static TextStyle textStyle({
    String? fontFmaily,
    double? fontSize,
    Color? fontColor,
    Color? decroationColor,
    TextDecoration?  textDecoration,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? letterspacing,
    double? wordSpacing,
  }){
    return TextStyle(
      fontFamily:  fontFmaily,
      fontWeight: fontWeight,
      fontSize: fontSize  ,
      decorationColor: decroationColor,
      color: fontColor,
      decoration: textDecoration,
      letterSpacing: letterspacing,
      wordSpacing: wordSpacing,
    );
  }
}