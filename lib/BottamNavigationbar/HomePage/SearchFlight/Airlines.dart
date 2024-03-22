import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/Controller/searchflightcontroller.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/model/airlinesmodel.dart';

import '../../../CustomElements/elements/CustomContiner.dart';
import '../../../constant/appstring.dart';
import '../../../route/routes.dart';

class Airlines extends StatelessWidget {
   Airlines({super.key});
  SearchFlightController searchFlightController = Get.put(SearchFlightController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 4.w,right: 4.w,bottom: 1.5.h),
            child: Column(
              children: [
               ListView.builder(
                 shrinkWrap: true,
                 itemCount: airlinesmodel.length,
                 itemBuilder:(context, index) {
                   return Column(
                     children: [
                       SizedBox(height: 3.h,),
                      Obx(() =>  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 3.w,right: 4.w),
                                child: Image.asset(airlinesmodel[index].image.toString(),fit: BoxFit.cover,height: 3.h,width: 6.w,),
                              ),
                              Text(airlinesmodel[index].title.toString(),style: CustomStyles.textStyle(fontSize: 13.sp,fontWeight: FontWeight.w600,fontColor: CustomColors.textcolor4,letterspacing: 0.5),),
          
                            ],
                          ),
                          Radio(
                            value: airlinesmodel[index].title.toString(),
                            groupValue: searchFlightController.selectairline.value,
                            onChanged: (newValue) {
                              searchFlightController.selectairline.value = airlinesmodel[index].title;
          
                            },),
          
                        ],
                      ),),
          
          
                     ],
                   );
               }, ),
                SizedBox(height: 4.h,),
                CustomContiner(
                  height: 6.5.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      gradient: LinearGradient(colors: [
                        CustomColors.background,
                        CustomColors.background1,
                      ])),
                  child: Center(
                      child: Text(
                        AppString.continue1,
                        style: CustomStyles.textStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                            fontColor: CustomColors.textcolor),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
