

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  Widget? customTitle;
  double? height;
  double? iconSize;
  Function? prefixAction;
  Widget? prefixIcon;
  bool isSafeArea;


  CustomAppBar({Key? key,
    required this.title,
    this.height,
    this.prefixAction,
    this.prefixIcon,
    this.iconSize,
    this.customTitle,
    this.isSafeArea = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          CustomColors.background,
          CustomColors.background1,
        ]),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8.w),
          bottomRight: Radius.circular(8.w),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.w),
            child: InkWell(
                onTap:  () =>  Get.back(),
                child: Icon(Icons.arrow_back,size: 25,color: CustomColors.textcolor,)),
          ),
          Padding(padding: EdgeInsets.only(left: 3.w),
            child: Text(title,style: CustomStyles.textStyle(fontColor: CustomColors.textcolor,fontSize: 18.sp,fontWeight: FontWeight.w900,letterspacing: 1)),
          ),
        ],
      ),
    );


  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size(170.w, height ?? (11.h) );
}