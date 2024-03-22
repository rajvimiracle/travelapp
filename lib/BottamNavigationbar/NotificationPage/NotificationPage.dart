import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/customappbar.dart';
import 'package:travelapp/constant/appstring.dart';
import 'package:travelapp/model/guidesmodel.dart';

import '../../model/HomeModel.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppString.notification,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 4.w,right: 2.w,top: 3.h,bottom: 3.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 4.w),
                child: Text(AppString.Today,style: CustomStyles.textStyle(fontSize: 12.sp,fontColor: CustomColors.textcolor5,fontWeight: FontWeight.w500),),
              ),
              Container(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: notificationmodel.length,
                  itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: 1.h,),
                      ListTile(
                        leading: Image.asset(notificationmodel[index].image.toString()),
                        title: Text(notificationmodel[index].title),

                      ),
                    ],
                  );
                },),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,top: 2.h),
                child: Text(AppString.Yesterday,style: CustomStyles.textStyle(fontSize: 12.sp,fontColor: CustomColors.textcolor5,fontWeight: FontWeight.w500),),
              ),
              Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: notificationmodel1.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(height: 1.h,),
                        ListTile(
                          leading: Image.asset(notificationmodel1[index].image.toString()),
                          title: Text(notificationmodel1[index].title),
                        ),
                      ],
                    );
                  },),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,top: 2.h),
                child: Text(AppString.Older,style: CustomStyles.textStyle(fontSize: 12.sp,fontColor: CustomColors.textcolor5,fontWeight: FontWeight.w500),),
              ),
              Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: notificationmodel2.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(height: 1.h,),
                        ListTile(
                          leading: Image.asset(notificationmodel2[index].image.toString()),
                          title: Text(notificationmodel2[index].title),
                        ),
                      ],
                    );
                  },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
