import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/constant/appstring.dart';
import 'package:travelapp/model/dealsmodel.dart';
import 'package:travelapp/route/routes.dart';

class DiscountPage extends StatelessWidget {
  const DiscountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              /* padding: EdgeInsets.only(top: 4.h,left: 6.w, right: 6.w,bottom: 3.w),*/
              width: double.infinity,
              height: 30.h,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    CustomColors.background,
                    CustomColors.background1,
                  ]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.w),
                      bottomRight: Radius.circular(10.w))),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 6.h, left: 6.w, right: 6.w, bottom: 3.w),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_back,
                            color: CustomColors.textcolor, size: 4.h),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          AppString.deals,
                          style: CustomStyles.textStyle(
                              fontSize: 19.sp,
                              fontColor: CustomColors.textcolor,
                              fontWeight: FontWeight.w600,
                              letterspacing: 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 17.h),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 7.w, left: 7.w),
                      child: Container(
                        child: Column(
                          children: [
                               ListView.separated(
                                shrinkWrap: true,
                                itemCount: dealsmodel.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      print(index);
                                           Get.toNamed(Routes.voucherpage ,arguments: dealsmodel[index] );
                                    },
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 19.h,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: dealsmodel[index].color,
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 2.w,
                                                    left: 4.w,
                                                    top: 2.h,
                                                    bottom: 1.h),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      dealsmodel[index].title.toString(),
                                                      style: CustomStyles.textStyle(
                                                          fontColor:
                                                          CustomColors.textcolor,
                                                          fontSize: 12.sp),
                                                    ),
                                                    SizedBox(
                                                      height: 1.h,
                                                    ),
                                                    Text(
                                                      dealsmodel[index].title1.toString(),
                                                      style: CustomStyles.textStyle(
                                                          fontColor:
                                                          CustomColors.textcolor,
                                                          fontSize: 17.sp,
                                                          fontWeight:
                                                          FontWeight.w900),
                                                    ),
                                                    SizedBox(
                                                      height: 1.h,
                                                    ),
                                                    Text(
                                                      dealsmodel[index].title2.toString(),
                                                      style: CustomStyles.textStyle(
                                                          fontColor:
                                                          CustomColors.textcolor,
                                                          fontSize: 12.sp),
                                                    ),
                                                    SizedBox(
                                                      height: 1.h,
                                                    ),
                                                    CustomContiner(
                                                      height: 3.h,
                                                      width: 35.w,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(23),
                                                        color:
                                                        CustomColors.textcolor,
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          dealsmodel[index].title3.toString(),
                                                          style:
                                                          CustomStyles.textStyle(
                                                              fontWeight:
                                                              FontWeight.bold,
                                                              fontSize: 10.sp,
                                                              fontColor:
                                                              CustomColors
                                                                  .textcolor2),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 40.w,
                                                decoration: BoxDecoration(
                                                    color: CustomColors.textcolor,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          dealsmodel[index].image.toString()),
                                                      fit: BoxFit.cover,
                                                      scale: 2,
                                                    ),
                                                    borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(15),
                                                      bottomRight:
                                                      Radius.circular(15),
                                                      bottomLeft: Radius.circular(90),
                                                      topLeft: Radius.circular(90),
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return SizedBox(height: 4.h,);
                                },
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





