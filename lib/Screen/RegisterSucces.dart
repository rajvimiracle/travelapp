import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/route/routes.dart';


import '../Constant/AppString.dart';


class RegisterSucces extends StatelessWidget {
  const RegisterSucces({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.spalshscreenbgcolor,
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Image.asset(ImagePath.background,fit: BoxFit.cover,),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10.h,
                left: 8.w,
                right: 8.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(ImagePath.logimg,fit: BoxFit.cover,),
                  SizedBox(height: 6.h,),
                  Center(
                    child: Column(
                      children: [
                        Image.asset(ImagePath.register,fit: BoxFit.cover,),
                        SizedBox(height: 2.h,),
                        Text(
                          AppString.registersuccess,
                          style: TextStyle(
                            color: CustomColors.background,
                            fontSize: 19.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Text(
                          AppString.congratulation,
                          style: CustomStyles.textStyle(
                            fontColor: CustomColors.iconcolor2,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3.h,),
                  InkWell(
                     onTap: () => Get.toNamed(Routes.bottomnavigationbar),
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
                          AppString.gotohomepage,
                          style: CustomStyles.textStyle(
                            fontWeight: FontWeight.bold,
                            fontColor: CustomColors.textcolor,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}