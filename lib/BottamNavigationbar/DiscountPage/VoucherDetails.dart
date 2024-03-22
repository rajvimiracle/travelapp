import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/customappbar.dart';
import 'package:travelapp/constant/appstring.dart';
import 'package:travelapp/model/dealsmodel.dart';

class VoucherDetailsPage extends StatelessWidget {
   VoucherDetailsPage({super.key});

   DealsModel dealsModel1 = Get.arguments;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(
        title: AppString.voucherdetails,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
                 Padding(padding: EdgeInsets.only(top: 3.h,bottom: 3.h,right: 7.w,left: 7.w),
                   child: Column(
                     children: [
                       Stack(
                         children: [
                         Container(
                         height: 19.h,
                         width: double.infinity,
                         decoration: BoxDecoration(
                           color: dealsModel1.color,
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
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(
                                   dealsModel1.title.toString(),
                                   style: CustomStyles.textStyle(
                                       fontColor:
                                       CustomColors.textcolor,
                                       fontSize: 12.sp),
                                 ),
                                 SizedBox(
                                   height: 1.h,
                                 ), Text(
                                   dealsModel1.title1.toString(),
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
                                  dealsModel1.title2.toString(),
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
                                     dealsModel1.title3.toString(),
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
                                   // color: CustomColors.textcolor,
                                     image: DecorationImage(
                                       image: AssetImage(
                                           dealsModel1.image.toString()),
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
                       SizedBox(height: 3.h,),
                       Text(AppString.Donec,style: CustomStyles.textStyle(fontWeight: FontWeight.bold,fontSize: 14.sp),),
                       SizedBox(height: 2.h,),
                       Text(AppString.cras,style: CustomStyles.textStyle(fontWeight: FontWeight.bold,fontSize: 10.sp,fontColor: CustomColors.iconcolor2),),
                       SizedBox(height: 3.h,),
                       Container(
                         height: 23.h,
                         width: double.infinity,
                         decoration: BoxDecoration(
                           border: Border.all(color: CustomColors.iconcolor2),
                           borderRadius: BorderRadius.circular(15),
                         ),
                       child: Column(
                         children: [
                           Container(
                             padding: EdgeInsets.only(top: 1.h,left: 4.w,bottom: 1.h),
                             height: 5.h,
                             width: double.infinity,

                             decoration: BoxDecoration(
                               color: CustomColors.background6,
                               borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight: Radius.circular(15),),
                             ),
                             child: Text(AppString.details,style: CustomStyles.textStyle(fontSize: 13.sp,fontWeight: FontWeight.normal),),
                           ),
                           Padding(padding: EdgeInsets.only(left: 4.w,right: 9.w,top: 2.h,),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(AppString.promoperid,style: CustomStyles.textStyle(fontColor: CustomColors.iconcolor2,fontSize: 11.sp),),
                                     Text(AppString.date1,style: CustomStyles.textStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),
                                   ],
                                 ),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(AppString.Mintransaction,style: CustomStyles.textStyle(fontColor: CustomColors.iconcolor2,fontSize: 11.sp),),
                                     Text(AppString.doller,style: CustomStyles.textStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),
                                   ],
                                 ),
                               ],
                             ),
                           ),
                           Padding(padding: EdgeInsets.only(left: 4.w,right: 12.w,top: 2.h,bottom: 1.h),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(AppString.type,style: CustomStyles.textStyle(fontColor: CustomColors.iconcolor2,fontSize: 11.sp),),
                                     Text(AppString.Allclass,style: CustomStyles.textStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),
                                   ],
                                 ),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(AppString.Destination,style: CustomStyles.textStyle(fontColor: CustomColors.iconcolor2,fontSize: 11.sp),),
                                     Text(AppString.domestic,style: CustomStyles.textStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),
                                   ],
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                       ),
                       Padding(padding: EdgeInsets.only(top: 3.h,bottom: 3.h),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(AppString.passengerdetail,style: CustomStyles.textStyle(fontSize: 17.sp,fontWeight: FontWeight.w500),),
                               SizedBox(height: 2.h,),
                             Container(
                               padding: EdgeInsets.only(left: 4.w,top: 1.5.h,bottom: 1.5.h),
                               height: 6.h,
                               width: double.infinity,
                               decoration: BoxDecoration(
                                 color: CustomColors.background6,
                                 borderRadius: BorderRadius.all(Radius.circular(15),
                                 ),
                                 border: Border.all(color: CustomColors.iconcolor2,),
                               ),
                               child: Text(AppString.type1,style: CustomStyles.textStyle(fontSize: 14.sp,),),
                             ),
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
