import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/Controller/searchflightcontroller.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/customappbar.dart';
import 'package:travelapp/constant/appstring.dart';
import 'package:travelapp/model/airlinesmodel.dart';
import 'package:travelapp/route/routes.dart';

class LanguagesPage extends StatelessWidget {
  LanguagesPage({super.key});

  SearchFlightController searchFlightController = Get.put(SearchFlightController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CustomContiner(
                height: 16.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15.w),
                    bottomLeft: Radius.circular(15.w),
                  ),
                  gradient: LinearGradient(colors: [
                    CustomColors.background,
                    CustomColors.background1,
                  ]),
                ), child: Padding(
                padding:  EdgeInsets.only(right: 3.w,left: 5.w,top: 5.h,bottom: 3.h),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () => Get.back(),

                        child: Icon(Icons.arrow_back,color: CustomColors.textcolor,size: 3.h)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppString.language,style: CustomStyles.textStyle(fontSize: 14.sp,fontColor: CustomColors.textcolor),),
                        Text(AppString.Choose,style: CustomStyles.textStyle(fontSize: 12.sp,fontColor: CustomColors.textcolor),),
                      ],
                    )
                  ],
                ),
              ),
              ),
              Padding(padding: EdgeInsets.only(top: 3.h,left: 7.w,right: 7.w),
                child: Column(
                  children: [
                    Container(
                      height: 8.h,
                      child: TextFormField(
                        controller: searchFlightController.searchController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: CustomColors.textcolor5,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: CustomColors.textcolor5,
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: CustomColors.textcolor5,
                              )
                          ),
                          prefixIcon: Icon(Icons.search,size: 3.h),
                          hintText: AppString.search,
                          hintStyle: CustomStyles.textStyle(fontSize: 15.sp,fontColor: CustomColors.iconcolor2),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(

                        children: [
                          SizedBox(height: 4.h,),
                          ListView.separated(
                            shrinkWrap: true,
                            itemCount: languagemodel.length,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 8.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  border: Border.all(color: CustomColors.iconcolor2),
                                ),
                                child: Column(
                                  children: [

                                    Obx(() => Padding(
                                      padding:  EdgeInsets.only(top:1.h,bottom:1.h,left: 3.w,right:3.w, ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(languagemodel[index].image.toString()),
                                              SizedBox(width: 3.w,),
                                              Text(languagemodel[index].title.toString()),
                                            ],
                                          ),
                                          Radio(
                                            value: airlinesmodel[index].title.toString(),
                                            groupValue: searchFlightController.selectlanguage.value,
                                            onChanged: (newValue) {
                                              searchFlightController.selectlanguage.value = airlinesmodel[index].title;

                                            },),
                                        ],
                                      ),
                                    ),),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: ( context,  index) {
                              return  SizedBox(height: 4.h,);
                            },),
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
    );
  }
}
