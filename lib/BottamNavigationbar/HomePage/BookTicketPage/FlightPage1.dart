
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/customappbar.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/constant/appstring.dart';
import 'package:travelapp/model/flightsmodel.dart';
import 'package:travelapp/route/routes.dart';

class Flight_Page extends StatefulWidget {
  const Flight_Page({super.key});

  @override
  State<Flight_Page> createState() => _Flight_PageState();
}

class _Flight_PageState extends State<Flight_Page> {
  var  _razorpay = Razorpay();
  var amountController = TextEditingController();


  @override
  void initState() {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet); // TODO: implement initState
    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Get.toNamed(Routes.successfully);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        actions: [
          Container(

            child: Padding(
              padding:  EdgeInsets.only(right: 2.w,top: 3.h,left: 2.w,bottom: 1.h),
              child: Column(
                children: [
                  Text(AppString.transaction,style: CustomStyles.textStyle(fontSize: 12.sp,),),
                  Text(AppString.payment3,style: CustomStyles.textStyle(fontSize: 10.sp),),
                  Text(AppString.using,style: CustomStyles.textStyle(fontSize: 10.sp),),
                  Text(AppString.net,style: CustomStyles.textStyle(fontSize: 10.sp),),
                  SizedBox(height: 1.5.h,),
                  CustomContiner(
                    height: 4.h,
                    width: 45.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(colors: [
                          CustomColors.background,
                          CustomColors.background1,
                        ])),
                    child: Center(
                      child: Text(
                        AppString.OK,
                        style: CustomStyles.textStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp,
                            fontColor: CustomColors.textcolor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      );
    },);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppString.flights,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 3.h,right: 4.w,left: 4.w,bottom: 3.h),
          child: Column(
            children: [
              ContinerWidget(),
              SizedBox(height: 2.h,),
              SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: flightmodel.length,
                      itemBuilder: (context, index) {
                        return Column(

                          children: [
                            SizedBox(height: 2.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(flightmodel[index].title.toString(),style: CustomStyles.textStyle(fontSize: 14.sp,fontColor: CustomColors.textcolor5,fontWeight: FontWeight.w500),),
                                Text(flightmodel[index].Subtitle.toString(),style: CustomStyles.textStyle(fontSize: 14.sp,fontColor: CustomColors.textcolor2,fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ],
                        );
                      },),
                    SizedBox(height: 12.h,),
                    InkWell(onTap: () {
                      var options = {
                        'key': "rzp_test_1DP5mmOlF5G5ag",
                        // amount will be multiple of 100
                        'amount': (int.parse(amountController.text) * 100)
                            .toString(), //So its pay 500
                        'name': 'The Miracle IT Solution',
                        'description': 'Demo',
                        'timeout': 300, // in seconds
                        'prefill': {
                          'contact': '8787878787',
                          'email': 'codewithpatel@gmail.com',
                        }
                      };
                      _razorpay.open(options);
                    },
                      /* onTap: () => Get.toNamed(Routes.paymentpage),*/
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
                              AppString.payment,
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
            ],
          ),
        ),
      ),
    );
  }


  Widget ContinerWidget(){
    return Column(
      children: [
        Container(
          height: 25.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.grey.withOpacity(0.9)),
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.h,left: 3.w,right:3.w,),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(ImagePath.lion1,fit: BoxFit.cover,height: 5.h,),
                            Column(
                              children: [
                                Text(AppString.lion1,style: CustomStyles.textStyle(fontColor: CustomColors.textcolor2),),
                                Text(AppString.R783T,style: CustomStyles.textStyle(fontColor: CustomColors.textcolor5),),
                              ],
                            ),
                            SizedBox(width: 40.w,),
                            Text(AppString.time1,style: CustomStyles.textStyle(fontColor: CustomColors.textcolor5),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(AppString.time,style: CustomStyles.textStyle(fontColor: CustomColors.background),),
                                SizedBox(height: 1.h,),
                                Text(AppString.y1),
                                SizedBox(height: 1.h,),
                                Text(AppString.yogyakarta1,style: CustomStyles.textStyle(fontColor: CustomColors.textcolor5),),
                              ],
                            ),
                            Image.asset(ImagePath.plane,fit: BoxFit.cover,height: 2.h,),
                            Column(
                              children: [
                                Text(AppString.time,style: CustomStyles.textStyle(fontColor: CustomColors.background),),
                                SizedBox(height: 1.h,),
                                Text(AppString.lOP),
                                SizedBox(height: 1.h,),
                                Text(AppString.lombok1,style: CustomStyles.textStyle(fontColor: CustomColors.textcolor5),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h,),
                  Divider(color: Colors.grey,),
                  Padding(
                    padding: EdgeInsets.only(top:1.h,left: 3.w,right:3.w,),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 3.5.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                              color: Colors.purpleAccent.withOpacity(0.1),
                              borderRadius: BorderRadius.all(Radius.circular(10),),
                            ),
                            child: Center(child: Text(AppString.firstclass,style: CustomStyles.textStyle(fontColor: CustomColors.background,fontSize: 11.sp,fontWeight: FontWeight.w600),)),
                          ),
                          Container(
                            height: 5.h,
                            width: 20.w,
                            child: TextField(
                              controller: amountController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          /* Text(AppString.money,style: CustomStyles.textStyle(fontColor: CustomColors.background,fontSize: 10.sp),),*/
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
