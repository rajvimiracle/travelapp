
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

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

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
                        SizedBox(height: 2.h,),
                        Text(
                          AppString.registeraccount,
                          style: TextStyle(
                            color: CustomColors.background,
                            fontSize: 19.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CustomTextFiled(
                            controller: authContoller.signnameController,
                            hintext: AppString.EnteryourName,
                            validator: (value) {
                              if( value == null || value.isEmpty){
                                return 'Please enter some text';
                              }
                              return null;
                            }
                        ),
                        CustomTextFiled(
                            controller: authContoller.signemailController,
                            hintext: AppString.Enteryouremail,
                            validator: (value) {
                              if( value == null || value.isEmpty){
                                return 'Please enter Your Email';
                              }
                              return null;
                            }
                          // border: InputBorder.none,
                        ),
                        CustomTextFiled(
                            controller: authContoller.signpassController,
                            hintext: AppString.Enterpassword,
                            validator: (value) {
                              if( value == null || value.isEmpty){
                                return 'Please enter your Password';
                              }
                              return null;
                            }
                        ),
                        CustomTextFiled(
                            controller: authContoller.signnationalityController,
                            hintext: AppString.YourNationality,
                            validator: (value) {
                              if( value == null || value.isEmpty){
                                return 'Please enter your Nationality';
                              }
                              return null;
                            }
                        ),
                        SizedBox(height: 3.h,),
                        InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()){
                              Get.toNamed(Routes.homepage);
                            }
                          },
                          // onTap: () => Get.toNamed(Routes.homepage),
                          // onTap: () => Get.toNamed(Routes.forgetpassword),
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
                                  AppString.signin,
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
                        SizedBox(height: 4.h,),
                        Center(
                          child: RichText(
                            text: TextSpan(
                                text: AppString.Alreadyhaveanaccount,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: CustomColors.signuptext,

                                ),
                                children: [
                                  TextSpan(
                                    text: AppString.log,
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: CustomColors.iconcolor1,
                                    ),
                                  ),
                                ]),
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
