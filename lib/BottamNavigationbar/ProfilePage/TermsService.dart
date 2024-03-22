import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/customappbar.dart';

import '../../constant/appstring.dart';


class TermsService extends StatelessWidget {
  const TermsService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppString.terms, height: 9.h,),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding:  EdgeInsets.only(left: 7.w,right: 7.w,top: 4.h),
            child: Column(
                children: [
                  Text("lacinia imperdiet tellu la cusornare lorem quis eleifend ipsrisus n augue In lacinia pos uere turpis eu laoreet Prae ntortis lacus turpis quis conva llis libero so itudin vitae Suspisse posuere magna quis ali et sagittis Mauris rhonc us quielit in mattis Ut ed nisi augue Nam nec ultricies sem",style: CustomStyles.textStyle(fontColor: Colors.grey),),SizedBox(height: 2.h,),
                  Text("lacinia imperdiet tellu la cusornare lorem quis eleifend ipsrisus n augue In lacinia pos uere turpis eu laoreet Prae ntortis lacus turpis quis conva llis libero so itudin vitae Suspisse posuere magna quis ali et sagittis Mauris rhonc us quielit in mattis Ut ed nisi augue Nam nec ultricies sem",style: CustomStyles.textStyle(fontColor: Colors.grey),),SizedBox(height: 2.h,),
                  Text("lacinia imperdiet tellu la cusornare lorem quis eleifend ipsrisus n augue In lacinia pos uere turpis eu laoreet Prae ntortis lacus turpis quis conva llis libero so itudin vitae Suspisse posuere magna quis ali et sagittis Mauris rhonc us quielit in mattis Ut ed nisi augue Nam nec ultricies sem",style: CustomStyles.textStyle(fontColor: Colors.grey),),SizedBox(height: 2.h,),
                  Text("lacinia imperdiet tellu la cusornare lorem quis eleifend ipsrisus n augue In lacinia pos uere turpis eu laoreet Prae ntortis lacus turpis quis conva llis libero so itudin vitae Suspisse posuere magna quis ali et sagittis Mauris rhonc us quielit in mattis Ut ed nisi augue Nam nec ultricies sem",style: CustomStyles.textStyle(fontColor: Colors.grey),),SizedBox(height: 2.h,),
                  Text("lacinia imperdiet tellu la cusornare lorem quis eleifend ipsrisus n augue In lacinia pos uere turpis eu laoreet Prae ntortis lacus turpis quis conva llis libero so itudin vitae Suspisse posuere magna quis ali et sagittis Mauris rhonc us quielit in mattis Ut ed nisi augue Nam nec ultricies sem",style: CustomStyles.textStyle(fontColor: Colors.grey),),SizedBox(height: 2.h,),
                  Text("lacinia imperdiet tellu la cusornare lorem quis eleifend ipsrisus n augue In lacinia pos uere turpis eu laoreet Prae ntortis lacus turpis quis conva llis libero so itudin vitae Suspisse posuere magna quis ali et sagittis Mauris rhonc us quielit in mattis Ut ed nisi augue Nam nec ultricies sem",style: CustomStyles.textStyle(fontColor: Colors.grey),),SizedBox(height: 2.h,),
                ]
            ),
          ),
        ),
      ),
    );
  }
}