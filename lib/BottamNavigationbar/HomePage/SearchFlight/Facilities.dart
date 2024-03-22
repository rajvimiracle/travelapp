import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/constant/appstring.dart';
import 'package:travelapp/model/airlinesmodel.dart';
import 'package:travelapp/route/routes.dart';

import '../../../Controller/searchflightcontroller.dart';
import '../../../model/facilitiesmodel.dart';

class FacilitiesPage extends StatefulWidget {
  FacilitiesPage({super.key});

  @override
  State<FacilitiesPage> createState() => _FacilitiesPageState();
}

class _FacilitiesPageState extends State<FacilitiesPage> {
  SearchFlightController searchFlightController = Get.put(SearchFlightController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(right: 4.w,left: 4.w,bottom: 6.h),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: facilitiesmodel.length,
                itemBuilder: (context, index) {
                  return Column(

                    children: [
                      SizedBox(height: 4.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(facilitiesmodel[index].image.toString(),fit: BoxFit.cover,height: 2.5.h,),
                              SizedBox(width: 3.w,),
                              Text(facilitiesmodel[index].title.toString(),style: CustomStyles.textStyle(fontSize: 15.sp),),
                            ],
                          ),
                          Checkbox(
                            activeColor: CustomColors.background,
                            value: facilitiesmodel[index].status,
                            onChanged: (value) {
                              facilitiesmodel[index].status = value!;
                              setState(() {
                              });
                            },
                          ),

                        ],
                      ),
                    ],
                  );

                },),
              SizedBox(height: 20.h,),
              InkWell(
                onTap: () => Get.toNamed(Routes.selectflightspage),
                child: CustomContiner(
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
              ),
            ],

          ),
        ),
      ),

    );
  }
}

/*
Obx(() =>   Checkbox(value: searchFlightController.checkBool.value,
onChanged: (value) {
searchFlightController.checkBool.value = !searchFlightController.checkBool.value;
},),
),*/
