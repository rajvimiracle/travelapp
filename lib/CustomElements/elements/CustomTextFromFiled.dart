


import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';




class CustomTextFiled extends StatelessWidget {
  String hintext;
  TextEditingController controller;
  VoidCallback? onTap;
  bool? readOnly;
  int? maxLines;
  TextInputType? keyboardType;
  bool? displayError;
  InputBorder? border;
  TextStyle? hintStyle;
  EdgeInsets? contentPadding;
  double? radius;
  FormFieldValidator<String>? validator;

  CustomTextFiled({
    required this.controller,
    required this.hintext,
    this.maxLines = 1,
    this.keyboardType,
    this.displayError,
    this.onTap,
    this.readOnly = false,
    this.border,
    this.hintStyle,
    this.contentPadding,
    this.radius = 15,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 2.h,),
      width: MediaQuery.of(context).size.width,
      height: 55,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.3),
        //     offset: Offset(0, 1),
        //     blurRadius: 5,
        //     spreadRadius: 0,
        //   )
        // ],
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(4, 8), // Shadow position
          ),
        ],
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: 5.w),
        child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText:  hintext,
              hintStyle: TextStyle(
                color: CustomColors.iconcolor2,
              ),
            ), validator: validator
        ),
      ),
    );
  }
}