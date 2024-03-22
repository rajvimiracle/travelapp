import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/route/routes.dart';

import '../constant/appstring.dart';

class SplashS2 extends StatelessWidget {
  const SplashS2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.spalshscreenbgcolor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(ImagePath.Spl2,fit: BoxFit.cover,width: double.infinity,),
              InkWell(
                onTap: () => Get.toNamed(Routes.loginScreen),
                child: CustomContiner(
                  height: 6.5.h,
                  width: 85.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    gradient: LinearGradient(
                      colors: [
                        CustomColors.background,
                        CustomColors.background1,
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppString.login,
                        style: CustomStyles.textStyle(
                          fontWeight: FontWeight.bold,
                          fontColor: CustomColors.textcolor,
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(width: 1.w,),
                      Icon(Icons.arrow_forward,color: CustomColors.textcolor,size: 15,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3.h,),
              InkWell(
                onTap: () => Get.toNamed(Routes.signupScreen),
                child: CustomContiner(
                  height: 6.5.h,
                  width: 85.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: CustomColors.background),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(AppString.registeryouraccount,
                          style: CustomStyles.textStyle(
                            fontWeight: FontWeight.bold,
                            fontColor: CustomColors.background,
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(width: 1.w,),
                        Icon(Icons.arrow_forward,color: CustomColors.background,size: 15,),
                      ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}