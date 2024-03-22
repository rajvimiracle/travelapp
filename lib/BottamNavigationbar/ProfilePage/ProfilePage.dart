import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/customappbar.dart';
import 'package:travelapp/constant/IconPath.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/route/routes.dart';

import '../../constant/appstring.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 2.h),
      child: Scaffold(
        appBar: CustomAppBar(title: AppString.profile, height: 9.h,),
        body: Padding(
          padding:  EdgeInsets.only(left: 5.w,right: 5.w),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 4.h,bottom: 4.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(ImagePath.profile,fit: BoxFit.cover,),
                        Text(AppString.jamesbrown,style: CustomStyles.textStyle(fontSize: 18.sp,fontWeight: FontWeight.w600),),
                        Text(AppString.gmail,style: CustomStyles.textStyle(fontColor: CustomColors.profiletext),),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppString.settings,style: CustomStyles.textStyle(fontSize: 18.sp,fontWeight: FontWeight.w600),),
                      Padding(
                        padding:  EdgeInsets.only(top: 2.h,bottom: 4.h),
                        child: InkWell(
                          onTap:() => Get.toNamed(Routes.profileinfo),
                          child: CustomContiner(
                            height: 6.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: CustomColors.profiletext),
                              color: CustomColors.textcolor,
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(IconPath.profilei,fit: BoxFit.cover,),
                                      SizedBox(width: 4.w,),
                                      Text(AppString.personalinfo,style: CustomStyles.textStyle(fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Image.asset(
                                    IconPath.arrow,fit: BoxFit.cover,height: 2.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(AppString.others,style: CustomStyles.textStyle(fontSize: 18.sp,fontWeight: FontWeight.w600),),
                      Padding(
                        padding:  EdgeInsets.only(top: 2.h,),
                        child: InkWell(
                          onTap:() => Get.toNamed(Routes.termsservice),
                          child: CustomContiner(
                            height: 6.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: CustomColors.profiletext),
                              color: CustomColors.textcolor,
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(IconPath.terms,fit: BoxFit.cover,),
                                      SizedBox(width: 2.w,),
                                      Text(AppString.termsofservice,style: CustomStyles.textStyle(fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Image.asset(
                                    IconPath.arrow,fit: BoxFit.cover,height: 2.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 2.h,),
                        child: InkWell(
                          onTap:() => Get.toNamed(Routes.languagespage),
                          child: CustomContiner(
                            height: 6.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: CustomColors.profiletext),
                              color: CustomColors.textcolor,
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(IconPath.language,fit: BoxFit.cover,),
                                      SizedBox(width: 2.w,),
                                      Text(AppString.language,style: CustomStyles.textStyle(fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Image.asset(
                                    IconPath.arrow,fit: BoxFit.cover,height: 2.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 2.h,),
                        child: InkWell(
                          onTap:() => Get.toNamed(Routes.helpcenter),
                          child: CustomContiner(
                            height: 6.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: CustomColors.profiletext),
                              color: CustomColors.textcolor,
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(IconPath.help,fit: BoxFit.cover,),
                                      SizedBox(width: 2.w,),
                                      Text(AppString.helpcenter,style: CustomStyles.textStyle(fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Image.asset(
                                    IconPath.arrow,fit: BoxFit.cover,height: 2.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}