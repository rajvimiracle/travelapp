import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/constant/appstring.dart';
import 'package:travelapp/route/routes.dart';

class SuccessFullyPage extends StatelessWidget {
  const SuccessFullyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 17.h,right: 7.w,left: 7.w,bottom: 5.h),
          child: Center(
            child: Column(
              children: [
                Center(child: Image.asset(ImagePath.sucess,fit: BoxFit.cover,height: 20.h,)),
                SizedBox(height: 4.h,),
                Text(AppString.order,style: CustomStyles.textStyle(fontSize: 14.sp,fontColor: CustomColors.textcolor2,fontWeight: FontWeight.w900,letterspacing: 0.2),),
                SizedBox(height: 1.h,),
                Text(AppString.check,style: CustomStyles.textStyle(fontSize: 10.sp,fontColor: CustomColors.textcolor5,fontWeight: FontWeight.normal,letterspacing: 0.2),),
                Text(AppString.check1,style: CustomStyles.textStyle(fontSize: 10.sp,fontColor: CustomColors.textcolor5,fontWeight: FontWeight.normal,letterspacing: 0.2),),
                SizedBox(height: 12.h,),
                InkWell(
                  onTap: () => Get.toNamed(Routes.ticketpage),
                  child: CustomContiner(
                    height: 6.5.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [
                          CustomColors.background,
                          CustomColors.background1,
                        ])),
                    child: Center(
                        child: Text(
                          AppString.ticket,
                          style: CustomStyles.textStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp,
                              fontColor: CustomColors.textcolor),
                        )),
                  ),
                ),
                SizedBox(height: 4.h,),
                InkWell(
                  onTap: () => Get.toNamed(Routes.bottomnavigationbar),
                  child: CustomContiner(
                    height: 6.5.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: CustomColors.background,
                      ),
                      // gradient: LinearGradient(colors: [
                      //   CustomColors.background,
                      //   CustomColors.background1,
                      // ])),
                    ),
                    child: Center(
                        child: Text(
                          AppString.back,
                          style: CustomStyles.textStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp,
                              fontColor: CustomColors.background),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}