import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  RxInt selectedFilterIndex =0.obs;
  RxBool invalidOtp = false.obs;

  // Log in
  TextEditingController logemailController = TextEditingController();
  TextEditingController logpassController = TextEditingController();

  // Sign UP
  TextEditingController signnameController = TextEditingController();
  TextEditingController signemailController = TextEditingController();
  TextEditingController signpassController = TextEditingController();
  TextEditingController signnationalityController = TextEditingController();

  // Forget Password
  TextEditingController FPemailController = TextEditingController();

  //forgetpasswordotp
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();

  // Create New Password
  TextEditingController newpassController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();


}