import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/CustomTextFromFiled.dart';
import 'package:travelapp/Screen/Login/AuthController.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/constant/appstring.dart';
import 'package:travelapp/route/routes.dart';


class NewPassword extends StatelessWidget {
  NewPassword({super.key});

  AuthController authContoller=Get.put(AuthController());

  final _formKey = GlobalKey<FormState>();

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
            SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 10.h,
                    left: 8.w,
                    right: 8.w,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(ImagePath.logimg,fit: BoxFit.cover,),
                        SizedBox(height: 6.h,),
                        Text(
                          AppString.createnewpassword,
                          style: TextStyle(
                            color: CustomColors.background,
                            fontSize: 19.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Text(
                          AppString.enteryouremailorphonenumber,
                          style: CustomStyles.textStyle(
                            fontColor: CustomColors.iconcolor2,
                            fontSize: 12.sp,
                          ),
                        ),
                        CustomTextFiled(
                            controller: authContoller.newpassController,
                            hintext: AppString.NewPassword,
                            validator: (value) {
                              if( value == null || value.isEmpty){
                                return 'Please enter Your New Password';
                              }
                              return null;
                            }
                        ),
                        CustomTextFiled(
                            controller: authContoller.confirmpassController,
                            hintext: AppString.ConfirmPassword,
                            validator: (value) {
                              if( value == null || value.isEmpty){
                                return 'Please enter ConforimPassword';
                              }
                              return null;
                            }
                        ),
                        SizedBox(height: 3.h,),
                        InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()){
                              Get.toNamed(Routes.registersucces);
                            }
                          },
                          // onTap: () => Get.toNamed(Routes.registersucces),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppString.changepassword,
                                  style: CustomStyles.textStyle(
                                    fontWeight: FontWeight.bold,
                                    fontColor: CustomColors.textcolor,
                                    fontSize: 15.sp,
                                  ),
                                ),
                                SizedBox(width: 1.w,),
                                Icon(Icons.arrow_forward,color: CustomColors.textcolor,size: 15,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}