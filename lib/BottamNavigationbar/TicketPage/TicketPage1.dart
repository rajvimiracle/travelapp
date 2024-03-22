import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/customappbar.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/constant/appstring.dart';


class TicketPage1 extends StatefulWidget {
  const TicketPage1({super.key});

  @override
  State<TicketPage1> createState() => _TicketPage1State();
}

class _TicketPage1State extends State<TicketPage1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppString.eticket, height: 9.h,),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding:  EdgeInsets.only(top: 3.h,left: 6.w,right: 6.w,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppString.ticketdetail,style: CustomStyles.textStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),),
                Padding(
                  padding:  EdgeInsets.only(top: 2.h,bottom: 4.h),
                  child: CustomContiner(
                    height: 27.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: CustomColors.Cbordercolor),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(top: 2.h,left: 3.w,right: 3.w,bottom: 1.5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(AppString.sep2023,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
                                  Text(AppString.t900900,style: CustomStyles.textStyle(fontColor: CustomColors.Cbordercolor,fontSize: 12.sp),),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(AppString.h30m,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
                                  Text(AppString.lionair,style: CustomStyles.textStyle(fontColor: CustomColors.Cbordercolor,fontSize: 12.sp),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding:  EdgeInsets.only(top: 2.h,left: 3.w,right: 3.w,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(AppString.YogyakartaYA,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(height: 1.h,),
                                  Text(AppString.BandaraJuanda,style: CustomStyles.textStyle(fontColor: CustomColors.Cbordercolor,fontSize: 12.sp),),
                                  SizedBox(height: 2.h),
                                  Text(AppString.LombokLOP,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(height: 1.h,),
                                  Text(AppString.BandaraJuanda,style: CustomStyles.textStyle(fontColor: CustomColors.Cbordercolor,fontSize: 12.sp),),
                                ],
                              ),
                              Image.asset(ImagePath.qrcode,fit: BoxFit.cover,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(AppString.passengerdetail,style: CustomStyles.textStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),),
                Padding(
                  padding:  EdgeInsets.only(top: 2.h,bottom: 8.h),
                  child: CustomContiner(
                    height: 24.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: CustomColors.Cbordercolor),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 5.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12),),
                            color: CustomColors.contcolor,
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: 3.w,top: 0.7.h),
                            child: Text(AppString.passenger1,style: CustomStyles.textStyle(fontSize: 15.sp,),),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left:3.w,right: 3.w,top: 1.h),
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(bottom: 4.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(AppString.name,style: TextStyle(color: CustomColors.Cbordercolor,fontSize: 11.sp,fontWeight: FontWeight.w500),),
                                        SizedBox(height: 0.5.h,),
                                        Text(AppString.jamesBrown,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(AppString.IdentityNumber,style: TextStyle(color: CustomColors.Cbordercolor,fontSize: 11.sp,fontWeight: FontWeight.w500),),
                                        SizedBox(height: 0.5.h,),
                                        Text(AppString.phone1,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(AppString.ticketnumber,style: TextStyle(color: CustomColors.Cbordercolor,fontSize: 11.sp,fontWeight: FontWeight.w500),),
                                      SizedBox(height: 0.5.h,),
                                      Text(AppString.t1485ft8,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(AppString.seatnumber,style: TextStyle(color: CustomColors.Cbordercolor,fontSize: 11.sp,fontWeight: FontWeight.w500),),
                                      SizedBox(height: 0.5.h,),
                                      Text(AppString.snf3,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  //onTap: () => Get.toNamed(Routes.payment),
                  child: CustomContiner(
                    height: 6.5.h,
                    width: 85.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      gradient: LinearGradient(
                        colors: [
                          CustomColors.background,
                          CustomColors.background1,
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        AppString.downloadeticket,
                        style: CustomStyles.textStyle(
                          fontWeight: FontWeight.bold,
                          fontColor: CustomColors.textcolor,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }


}

