import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class CustomTitle extends StatelessWidget {
  String title;
  double? fontSize;
  Color? fontColor;
  FontWeight? fontWeight;
  int? maxLines;
  TextOverflow? overFlow;

  CustomTitle(
      {
        required this.title,
        this.fontColor,
        this.fontWeight,
        this.maxLines,
        this.fontSize,
        this.overFlow});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      overflow: overFlow ?? TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize ?? (20.sp),
        fontWeight: fontWeight ?? FontWeight.bold,
        color: fontColor ?? Colors.black,
      ),

    );
  }
}
