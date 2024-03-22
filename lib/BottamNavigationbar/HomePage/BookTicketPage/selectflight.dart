import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/customappbar.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/constant/appstring.dart';
import 'package:travelapp/route/routes.dart';

class SelectFlightPage extends StatelessWidget {
  const SelectFlightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Select Flights",
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 4.h,right: 6.w,left: 6.w,bottom: 3.h),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                InkWell(
                    onTap: () => Get.toNamed(Routes.flightspage1),

                    child: ContinerWidget()),
                SizedBox(height: 3.h,),
                ContinerWidget(),
                SizedBox(height: 3.h,),
                ContinerWidget(),
                SizedBox(height: 3.h,),
                ContinerWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget ContinerWidget(){
    return Column(
      children: [
        Container(
          height: 27.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.grey.withOpacity(0.9)),
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.h,left: 3.w,right:3.w,),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(ImagePath.lion1,fit: BoxFit.cover,height: 5.h,),
                                Column(
                                  children: [
                                    Text(AppString.lion1,style: CustomStyles.textStyle(fontColor: CustomColors.textcolor2),),
                                    Text(AppString.R783T,style: CustomStyles.textStyle(fontColor: CustomColors.textcolor5),),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(AppString.time1,style: CustomStyles.textStyle(fontColor: CustomColors.textcolor5),),
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(AppString.time,style: CustomStyles.textStyle(fontColor: CustomColors.background),),
                                SizedBox(height: 1.h,),
                                Text(AppString.y1),
                                SizedBox(height: 1.h,),
                                Text(AppString.yogyakarta1,style: CustomStyles.textStyle(fontColor: CustomColors.textcolor5),),
                              ],
                            ),
                            Image.asset(ImagePath.plane,fit: BoxFit.cover,height: 2.h,),
                            Column(
                              children: [
                                Text(AppString.time,style: CustomStyles.textStyle(fontColor: CustomColors.background),),
                                SizedBox(height: 1.h,),
                                Text(AppString.lOP),
                                SizedBox(height: 1.h,),
                                Text(AppString.lombok1,style: CustomStyles.textStyle(fontColor: CustomColors.textcolor5),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h,),
                  Divider(color: Colors.grey,),
                  Padding(
                    padding: EdgeInsets.only(top:2.h,left: 3.w,right:3.w,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 3.5.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent.withOpacity(0.1),
                            borderRadius: BorderRadius.all(Radius.circular(10),),
                          ),
                          child: Center(child: Text(AppString.firstclass,style: CustomStyles.textStyle(fontColor: CustomColors.background,fontSize: 11.sp,fontWeight: FontWeight.w600),)),
                        ),
                        Text(AppString.money,style: CustomStyles.textStyle(fontColor: CustomColors.background,fontSize: 10.sp),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}