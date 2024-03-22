
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';

class CustomText extends StatelessWidget {
  String text;
  String? fontFamily;
  Color? color;
  FontWeight? fontWeight;
  int? maxLines;
  double? fontSize;
  TextOverflow? overFlow;
  Color? decroationColor;
  TextDecoration? decoration;
  double? letterspacing;
  double? wordSpacing;

  CustomText({
    Key? key,
    required this.text,
    this.overFlow,
    this.fontWeight,
    this.color,
    this.decroationColor,
    this.fontSize,
    this.maxLines,
    this.decoration,
    this.fontFamily,
    this.letterspacing,
    this.wordSpacing,
  }
      );


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow ?? TextOverflow.ellipsis,
      maxLines: maxLines,
      style: CustomStyles.textStyle(
        fontSize: fontSize ?? 10.sp,
        fontColor: color,
        fontWeight: fontWeight ?? FontWeight.w600,
        decroationColor: decroationColor,
        fontFmaily: fontFamily,
        textDecoration: decoration,
        letterspacing: letterspacing,
        wordSpacing: wordSpacing,
      ),
    );
  }
}