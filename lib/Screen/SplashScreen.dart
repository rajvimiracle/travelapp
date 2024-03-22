import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';

import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/route/routes.dart';
import '../Constant/AppString.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 8.h,left: 10.w,right: 6.w,bottom: 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppString.Lets,
                      style: CustomStyles.textStyle(
                        fontSize: 19.sp,
                        fontColor: CustomColors.spltext,
                      ),
                    ),
                    // SizedBox(height: 1.h,),
                    Text(AppString.Explore,
                      style: CustomStyles.textStyle(
                        fontSize: 24.sp,
                        fontColor: CustomColors.spltext,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(AppString.TheWorld,
                      style: CustomStyles.textStyle(
                        fontSize: 18.sp,
                        fontColor: CustomColors.spltext,
                      ),
                    ),
                    SizedBox(height: 2.h,),
                    Text(AppString.lorem,
                      style: CustomStyles.textStyle(
                        fontSize: 10.sp,
                        fontColor: CustomColors.spltext,
                      ),
                    ),
                    Text(AppString.elit,
                      style: CustomStyles.textStyle(
                        fontSize: 10.sp,
                        fontColor: CustomColors.spltext,
                      ),
                    ),
                    Text(AppString.massa,
                      style: CustomStyles.textStyle(
                        fontSize: 10.sp,
                        fontColor: CustomColors.spltext,
                      ),
                    ),
                    SizedBox(height: 3.h,),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.splashScreen2),
                      child: CustomContiner(
                        height: 4.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              CustomColors.background,
                              CustomColors.background1,
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(AppString.Enter,
                            style: CustomStyles.textStyle(
                              fontWeight: FontWeight.bold,
                              fontColor: CustomColors.textcolor,
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // CustomButton(
                    //   title: AppString.Enter,
                    //   fontSIze: 14.sp,
                    //   size: Size(35.w, 4.h),
                    //   onTap: () => Get.toNamed(Routes.splashScreen2),
                    // ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Image.asset(ImagePath.Splbg,fit: BoxFit.cover,height: 63.h,),
                  // Image.asset("assets/images/splbg.png",fit: BoxFit.cover,height: 63.h,),
                  Positioned(
                    bottom: 7.h,
                    left: 5.w,
                    right: 5.w,
                    child: Center(
                      //child: Image.asset("assets/images/Splsimg.png",fit: BoxFit.cover,height: 40.h,),
                      child: Image.asset(ImagePath.Splashimg,fit: BoxFit.cover,height: 40.h,),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}