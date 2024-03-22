import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/customappbar.dart';
import 'package:travelapp/constant/IconPath.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/constant/appstring.dart';


class ProfilrInfo extends StatelessWidget {
  const ProfilrInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppString.perinfo, height: 9.h,),
      body: Padding(
        padding:  EdgeInsets.only(left: 7.w,right: 7.w),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(AppString.jamesbrown,style: CustomStyles.textStyle(fontSize: 18.sp,fontWeight: FontWeight.w600),),
                          SizedBox(width: 5.w,),
                          Image.asset(IconPath.edit,fit: BoxFit.cover,),
                        ],
                      ),
                      Text(AppString.gmail,style: CustomStyles.textStyle(fontColor: CustomColors.profiletext,),),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppString.editProfile,style: CustomStyles.textStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
                        Image.asset(IconPath.edit,fit: BoxFit.cover,),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 2.h,),
                      child: CustomContiner(
                        height: 34.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: CustomColors.profiletext),
                          color: CustomColors.textcolor,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.all(2.w),
                              child: Row(
                                children: [
                                  Image.asset(IconPath.pinfo,fit: BoxFit.cover,),
                                  SizedBox(width: 3.h,),
                                  Text(AppString.jamesbrown,style: CustomStyles.textStyle(fontColor: CustomColors.profiletext),),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding:  EdgeInsets.all(2.w),
                              child: Row(
                                children: [
                                  Image.asset(IconPath.gmail,fit: BoxFit.cover,),
                                  SizedBox(width: 3.h,),
                                  Text(AppString.gmail,style: CustomStyles.textStyle(fontColor: CustomColors.profiletext),),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding:  EdgeInsets.all(2.w),
                              child: Row(
                                children: [
                                  Image.asset(IconPath.phone,fit: BoxFit.cover,),
                                  SizedBox(width: 3.h,),
                                  Text(AppString.phonenub,style: CustomStyles.textStyle(fontColor: CustomColors.profiletext),),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding:  EdgeInsets.all(2.w),
                              child: Row(
                                children: [
                                  Image.asset(IconPath.location,fit: BoxFit.cover,),
                                  SizedBox(width: 3.h,),
                                  Text(AppString.pinfilocation,style: CustomStyles.textStyle(fontColor: CustomColors.profiletext),),
                                ],
                              ),
                            ),
                          ],
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
    );
  }
}