
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/CustomTextFromFiled.dart';
import 'package:travelapp/Screen/Login/AuthController.dart';
import 'package:travelapp/constant/IconPath.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/route/routes.dart';

import '../../constant/appstring.dart';




class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  AuthController authContoller=Get.put(AuthController());

  // String? validateEmail(String? email){
  //   RegExp emailRegex = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
  //   final isEmailValid = emailRegex.hasMatch(email ?? '');
  //   if (!isEmailValid){
  //     return 'Please enter a valid email';
  //   }
  //   return null;
  // }
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
                          AppString.loginl,
                          style: TextStyle(
                            color: CustomColors.background,
                            fontSize: 19.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CustomTextFiled(
                            controller: authContoller.logemailController,
                            hintext: AppString.Enteryouremail,
                            validator: (value) {
                              if( value == null || value.isEmpty){
                                return 'Please enter some text';
                              }
                              return null;
                            }
                        ),
                        CustomTextFiled(
                            controller: authContoller.logpassController,
                            hintext: AppString.Enterpassword,
                            validator: (value) {
                              if( value == null || value.isEmpty){
                                return 'Please enter your Password';
                              }
                              return null;
                            }
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.forgetpassword);
                          },
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding:  EdgeInsets.only(top: 2.h,bottom: 3.h),
                              child: Text(
                                AppString.Forgetpassword,
                                style: CustomStyles.textStyle(
                                  fontColor: CustomColors.iconcolor2,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()){
                              Get.toNamed(Routes.bottomnavigationbar);
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   const SnackBar(content: Text("Processing Data ")),
                              // );
                            }
                          },
                          // onTap: () => Get.toNamed(Routes.signupScreen),
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
                                Text(AppString.login,
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
                        SizedBox(height: 3.h,),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child:  CustomContiner(
                                height: 4.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: CustomColors.background),
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(IconPath.goggle,fit: BoxFit.cover,),
                                      SizedBox(width: 3.5.w,),
                                      Text(AppString.Google,
                                        style: CustomStyles.textStyle(
                                          fontWeight: FontWeight.bold,
                                          fontColor: CustomColors.textcolor2,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            ),
                            SizedBox(width: 3.w,),
                            Expanded(
                              flex: 1,
                              child: CustomContiner(
                                height: 4.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: CustomColors.background),
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(IconPath.facbook,fit: BoxFit.cover,),
                                      SizedBox(width: 3.5.w,),
                                      Text(AppString.Facebook,
                                        style: CustomStyles.textStyle(
                                          fontWeight: FontWeight.bold,
                                          fontColor: CustomColors.textcolor2,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ]
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
            ),
          ],
        ),
      ),
    );
  }
}