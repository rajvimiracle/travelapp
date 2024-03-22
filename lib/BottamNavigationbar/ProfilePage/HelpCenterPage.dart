

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/BottamNavigationbar/ProfilePage/controller/helpcentercontroller.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/customappbar.dart';
import 'package:travelapp/constant/IconPath.dart';
import 'package:travelapp/constant/appstring.dart';
import 'package:travelapp/route/routes.dart';

class HelpCenter extends StatelessWidget {
  HelpCenter({super.key});

  HelpCenterController helpCenterController = Get.put(HelpCenterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppString.helpcenter, height: 9.h,),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding:  EdgeInsets.only(left: 7.w,right: 7.w,top: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(bottom: 4.h),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 0.6.h),
                    height: 5.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: CustomColors.profiletext),
                      color: CustomColors.textcolor,
                    ),
                    child: TextField(
                      controller: helpCenterController.searchController,
                      decoration: InputDecoration(
                        hintText: AppString.search,focusColor: CustomColors.profiletext,
                        prefixIcon: Icon(Icons.search,color: CustomColors.profiletext,),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Text(AppString.categories,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
                Padding(
                  padding:  EdgeInsets.only(top: 2.h,),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => Get.toNamed(Routes.faq),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(IconPath.FAQ),
                                SizedBox(width: 5.w,),
                                Text(AppString.FAQ,)
                              ],
                            ),
                            Image.asset(IconPath.arrow,),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      InkWell(
                        onTap: () => Get.toNamed(Routes.booking),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(IconPath.Booking),
                                SizedBox(width: 5.w,),
                                Text(AppString.booking,)
                              ],
                            ),
                            Image.asset(IconPath.arrow,),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      InkWell(
                        onTap: () => Get.toNamed(Routes.Paymenthelp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(IconPath.Payment),
                                SizedBox(width: 5.w,),
                                Text(AppString.payment,)
                              ],
                            ),
                            Image.asset(IconPath.arrow,),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      InkWell(
                        onTap: () => Get.toNamed(Routes.fights),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(IconPath.filghts),
                                SizedBox(width: 5.w,),
                                Text(AppString.fights,)
                              ],
                            ),
                            Image.asset(IconPath.arrow,fit: BoxFit.cover,),
                          ],
                        ),
                      ),
                    ],
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