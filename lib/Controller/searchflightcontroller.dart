import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/model/airlinesmodel.dart';


class SearchFlightController extends GetxController{


  RxString selectairline = airlinesmodel.first.title.obs;
  RxString selectpayment = "".obs;

  TextEditingController searchController = TextEditingController();
  RxString selectlanguage = languagemodel.first.title.obs;

 /* RxBool checkBool = false.obs;*/
}