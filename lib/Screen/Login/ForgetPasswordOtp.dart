
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/Constant/AppString.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/Screen/Login/AuthController.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/route/routes.dart';


class FPotp extends StatefulWidget {
  FPotp({super.key});

  @override
  State<FPotp> createState() => _FPotpState();
}

class _FPotpState extends State<FPotp> {
  AuthController authController = Get.put(AuthController());


  String strFormatting(n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.spalshscreenbgcolor,
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Image.asset(ImagePath.background, fit: BoxFit.cover,),
            ),
            SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 10.h,
                    left: 8.w,
                    right: 8.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(ImagePath.logimg, fit: BoxFit.cover,),
                      SizedBox(height: 6.h,),
                      Text(
                        AppString.forgetpassword,
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
                      Padding(
                        padding: EdgeInsets.only(top: 4.h, bottom: 2.h),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                AppString.verificationcode,
                                style: CustomStyles.textStyle(
                                  fontColor: CustomColors.iconcolor2,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 15.w, right: 15.w),
                                child: Divider(
                                  color: CustomColors.iconcolor2,
                                  thickness: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          myInputBox(context, authController.txt1),
                          myInputBox(context, authController.txt2),
                          myInputBox(context, authController.txt3),
                          myInputBox(context, authController.txt4),
                        ],
                      ),
                      Center(
                        child: Text(
                          authController.invalidOtp.value ? 'Invalid otp!' : '',
                          style: const TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),

                      SizedBox(height: 3.h,),
                      InkWell(
                        onTap: () {
                          final otp = authController.txt1.text + authController.txt2.text + authController.txt3.text + authController.txt4.text;
                          if (otp == '1234') {
                            Get.toNamed(Routes.newpass);
                            // Navigator.of(context).pushReplacement(
                            //   MaterialPageRoute(
                            //     builder: (context) => NewPassword(),
                            //   ),
                            // );
                          } else {
                            setState(() {
                              authController.invalidOtp.value = true;
                            });
                          }
                        },
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
                                AppString.submit,
                                style: CustomStyles.textStyle(
                                  fontWeight: FontWeight.bold,
                                  fontColor: CustomColors.textcolor,
                                  fontSize: 15.sp,
                                ),
                              ),
                              SizedBox(width: 1.w,),
                              Icon(Icons.arrow_forward,
                                color: CustomColors.textcolor, size: 15,),
                            ],
                          ),
                        ),
                      ),
                    ],
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

Widget myInputBox(BuildContext context, TextEditingController controller) {
  return Container(
    padding: EdgeInsets.only(bottom: 1.h),
    height: 5.h,
    width: 9.w,
    decoration: BoxDecoration(
      border: Border.all(width: 1),
      borderRadius:  BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    child: TextField(
      controller: controller,
      maxLength: 1,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style:  TextStyle(fontSize: 20),
      decoration:  InputDecoration(
        border: InputBorder.none,
        counterText: '',
      ),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
    ),
  );
}

