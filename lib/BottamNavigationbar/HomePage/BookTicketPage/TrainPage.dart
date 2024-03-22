
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/constant/appstring.dart';
import 'package:travelapp/route/routes.dart';

import '../../../Controller/BookTicketController.dart';
import '../../../CustomElements/elements/CustomColor.dart';
import '../../../constant/ImagePath.dart';

class TrainPage extends StatelessWidget {
  TrainPage({super.key});


  BookTicketController controller = Get.put(BookTicketController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          if(controller.showflight.value)
            CustomContiner(
              padding: EdgeInsets.only(top: 0.7.h, left: 5.w),
              height: 10.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: [
                  Image.asset(
                    ImagePath.train,
                    fit: BoxFit.cover,
                    height: 2.h,
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.from,
                        style: CustomStyles.textStyle(
                            fontColor: CustomColors.background,
                            fontSize: 14.sp),
                      ),
                      Text(
                        AppString.yogyakarta,
                        style: CustomStyles.textStyle(
                            fontColor: CustomColors.textcolor2,
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          SizedBox(
            height: 3.h,
          ),
          CustomContiner(
            padding: EdgeInsets.only(top: 0.7.h, left: 5.w),
            height: 8.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              children: [
                Image.asset(
                  ImagePath.train,
                  fit: BoxFit.cover,
                  height: 2.h,
                ),
                SizedBox(
                  width: 7.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.to,
                      style: CustomStyles.textStyle(
                          fontColor: CustomColors.background,
                          fontSize: 14.sp),
                    ),
                    Text(
                      AppString.lombok,
                      style: CustomStyles.textStyle(
                          fontColor: CustomColors.textcolor2,
                          fontSize: 12.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: controller.selDatePicker,
                  child: CustomContiner(
                    padding: EdgeInsets.only(top: 0.7.h, left: 5.w),
                    height: 8.h,
                    width: 7.w,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius:
                      BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppString.depart,
                          style: CustomStyles.textStyle(
                              fontColor: CustomColors.background,
                              fontSize: 14.sp),
                        ),
                        Obx(
                              () => Text(
                            DateFormat.yMMMd()
                                .format(
                                controller.selectedDate!.value)
                                .toString(),
                            style: CustomStyles.textStyle(
                                fontSize: 11.sp),
                          ),
                        ),
                        /*  Text("${currentDate.year}/${currentDate.month}/${currentDate.day}"),*/
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: controller.selDatePicker,
                  child: CustomContiner(
                    padding: EdgeInsets.only(top: 0.7.h, left: 5.w),
                    height: 8.h,
                    width: 7.w,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius:
                      BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppString.return1,
                          style: CustomStyles.textStyle(
                              fontColor: CustomColors.background,
                              fontSize: 14.sp),
                        ),
                        Obx(
                              () => Text(
                            DateFormat.yMMMd()
                                .format(
                                controller.selectedDate!.value)
                                .toString(),
                            style: CustomStyles.textStyle(
                                fontSize: 11.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child:   InkWell(
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        height: 48.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: CustomColors.textcolor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 2.h, right: 5.w, left: 5.w),
                          child:  Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppString.class1,
                                style: CustomStyles.textStyle(
                                    fontSize: 20.sp,
                                    fontColor:
                                    CustomColors.textcolor2),
                              ),
                              Divider(
                                height: 2.h,
                                color: CustomColors.iconcolor2,
                              ),
                              Container(
                                height: 38.h,
                                child: ListView.builder(
                                  itemCount: controller.list.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        SizedBox(height: 2.h,),
                                        Obx(() =>  Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(controller.list[index],style: CustomStyles.textStyle(fontColor: CustomColors.textcolor2,fontSize: 13.sp,),),
                                            Radio(
                                              value: controller.list[index],
                                              groupValue: controller.selectValue.value,
                                              onChanged: (newValue) {
                                                controller.selectValue.value = controller.list[index];
                                                Get.back();
                                              },),
                                          ],
                                        ),),
                                      ],
                                    );
                                  },),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: CustomContiner(
                    padding: EdgeInsets.only(top: 0.7.h, left: 5.w),
                    height: 12.h,
                    width: 8.w,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius:
                      BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppString.class1,
                          style: CustomStyles.textStyle(
                              fontColor: CustomColors.background,
                              fontSize: 13.sp),
                        ),
                        Obx(() => Text(
                          "${controller.selectValue.value}",
                          style: CustomStyles.textStyle(
                              fontColor: CustomColors.textcolor2,
                              fontSize: 11.sp),
                        )),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                flex: 1,
                child: CustomContiner(
                  padding: EdgeInsets.only(
                      top: 0.7.h, left: 3.w, right: 3.w),
                  height: 12.h,
                  width: 7.w,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.pax,
                        style: CustomStyles.textStyle(
                            fontColor: CustomColors.background,
                            fontSize: 14.sp),
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () => controller.increment(),
                            icon: Icon(Icons.add_circle_outline_outlined,
                                size: 2.5.h,
                                color: CustomColors.background),
                          ),
                          Obx(() => Text("${controller.counter.toString()}",style: CustomStyles.textStyle(fontSize: 15.sp),),),

                          IconButton(
                            onPressed: () => controller.decrement(),
                            icon: Icon(Icons.do_not_disturb_on_outlined,size: 2.5.h,),
                            color: CustomColors.background,
                          ),
                          /*     Image.asset(IconPath.plus,color: CustomColors.background,height: 4.h,width: 10.w,),*/
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.5.h,
          ),
          InkWell(
            onTap: () => Get.toNamed(Routes.searchflightpage),
            child: CustomContiner(
              height: 6.5.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  gradient: LinearGradient(colors: [
                    CustomColors.background,
                    CustomColors.background1,
                  ])),
              child: Center(
                  child: Text(
                    AppString.searchf,
                    style: CustomStyles.textStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        fontColor: CustomColors.textcolor),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}