import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';


import 'package:sizer/sizer.dart';


import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/constant/appstring.dart';
import 'package:travelapp/route/routes.dart';


class TicketPage extends StatefulWidget {
  TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {

  var  _razorpay = Razorpay();
  var options;

  @override
  void initState() {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

    options = {
      'key': 'rzp_test_1DP5mmOlF5G5ag',
      'amount': 100 * 100,
      'name': 'Sai Gopi YT',
      'description': 'Course Free',
      'prefill': {'contact': '7981686394', 'email': 'test@razorpay.com'}
    };

    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    Get.toNamed(Routes.refund);
    // print("_handlePaymentSuccess payment is success +  ${ response.paymentId}" );
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    print("_handlePaymentError payment is failed  +${response.message}");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet was selected
  }


  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 30.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25),),
              gradient: LinearGradient(
                colors: [
                  CustomColors.background,
                  CustomColors.background1,
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 7.h,left: 7.w,right: 7.w,),
            child: Container(
              child: Column(
                children: [
                  Row (
                    children: [
                      Icon(Icons.arrow_back,color: CustomColors.textcolor,size: 5.w,),
                      SizedBox(width: 0.5.h,),
                      Text(AppString.eticket,style: CustomStyles.textStyle(fontColor: CustomColors.textcolor,fontSize: 18.sp,letterspacing: 1),),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 3.h,bottom: 4.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChoiceChip(label: Text("ALL"),
                          showCheckmark: false,
                          selected: selectedIndex == 0,
                          onSelected: (value) {
                            setState(() {
                              selectedIndex = 0 ;
                            });
                          },
                        ),
                        ChoiceChip(label: Text("completed"),
                          showCheckmark: false,
                          selected: selectedIndex == 1,
                          disabledColor: Colors.transparent,onSelected: (value) {
                            setState(() {
                              selectedIndex = 1;
                            });
                          },),
                        ChoiceChip(label: Text("refunded"),
                          showCheckmark: false,
                          selected: selectedIndex == 2,
                          disabledColor: Colors.transparent,onSelected: (value) {
                            setState(() {
                              selectedIndex = 2;
                            });
                          },),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.h,left: 7.w,right: 7.w,),
            child: SingleChildScrollView(
              child:  Column(
                children: [
                  selectedIndex == 0 ? Column(
                    children: [
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                    ],
                  ) :
                  selectedIndex == 1 ?Column(
                    children: [
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                    ],
                  ) :
                  selectedIndex == 2 ? Column(
                    children: [
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                    ],
                  ) : SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget ContainerWidget () {
    return Column(
      children: [
        InkWell(
          onTap: () => Get.toNamed(Routes.ticketpage1),
          child: Container(
            height: 22.h,
            width: 90.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: CustomColors.border),
              color: CustomColors.textcolor,
            ),
            child: Padding(
              padding:  EdgeInsets.all(1.5.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(ImagePath.lion1,fit: BoxFit.cover,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lion Air",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomContiner(
                            height: 3.h,
                            width: 25.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: CustomColors.Bbg2,
                            ),
                            child: Center(
                              child: Text(AppString.completed1,style: TextStyle(color:CustomColors.BText2),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 1.5.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(AppString.t900PM,style: TextStyle(color: CustomColors.iconcolor1,fontSize: 10.sp),),
                          Text(AppString.y1,style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Image.asset(ImagePath.eticket,fit: BoxFit.cover,),
                      Column(
                        children: [
                          Text(AppString.t900PM,style: TextStyle(color: CustomColors.iconcolor1,fontSize: 10.sp),),
                          Text(AppString.lOP,style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h,),
                  SizedBox(height: 1.h,),
                  Row(
                    children: [
                      Text(AppString.economy,style: CustomStyles.textStyle(fontColor: CustomColors.iconcolor2),),
                      Padding(
                        padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                        child: Image.asset(ImagePath.circle,fit: BoxFit.cover,height: 0.9.h,color: CustomColors.iconcolor2,),
                      ),
                      Text(AppString.direct,style: CustomStyles.textStyle(fontColor: CustomColors.iconcolor2),),
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContiner(
                        height: 3.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: CustomColors.contcolor,
                        ),
                        child: Center(
                          child: Text(AppString.eticket,style: TextStyle(color:CustomColors.iconcolor1),),
                        ),
                      ),
                      CustomContiner(
                        height: 3.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          gradient: LinearGradient(
                            colors: [
                              CustomColors.background,
                              CustomColors.background1,
                            ],
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            _razorpay.open(options);
                          },
                          child: Center(
                            child: Text(AppString.refund, style: CustomStyles.textStyle(fontColor: CustomColors.textcolor,),),
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
      ],
    );
  }

  Widget ContainerWidget2 () {
    return  Column(
      children: [
        InkWell(
          onTap: () => Get.toNamed(Routes.ticketpage1),
          child: Container(
            height: 16.h,
            width: 90.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: CustomColors.border),
              color: CustomColors.textcolor,
            ),
            child: Padding(
              padding:  EdgeInsets.all(1.5.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(ImagePath.lion,fit: BoxFit.cover,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lion Air",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomContiner(
                            height: 3.h,
                            width: 25.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: CustomColors.Bbg3,
                            ),
                            child: Center(
                              child: Text(AppString.refund,style: TextStyle(color:CustomColors.BText3),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 1.5.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(AppString.t900PM,style: TextStyle(color: CustomColors.iconcolor1,fontSize: 10.sp),),
                          Text(AppString.y1,style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Image.asset(ImagePath.eticket,fit: BoxFit.cover,),
                      Column(
                        children: [
                          Text(AppString.t900PM,style: TextStyle(color: CustomColors.iconcolor1,fontSize: 10.sp),),
                          Text(AppString.lOP,style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Row(
                    children: [
                      Text(AppString.alreadyrefunded,style: CustomStyles.textStyle(fontColor: CustomColors.iconcolor1,fontWeight: FontWeight.bold,),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

