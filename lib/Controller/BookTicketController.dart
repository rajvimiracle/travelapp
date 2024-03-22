
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookTicketController extends GetxController {

  Rx<DateTime>  selectedDate = DateTime.now().obs;
  RxInt counter = 1.obs;
  RxBool showflight = true.obs;
  RxBool showtrains = false.obs;


  RxString selectValue = "First".obs;

  List<String> list = [
    "First",
    "Business",
    "Premium Economy",
    "Business/First",
    "Economy",
    "Economy/Premium Economy",
  ];

  void selDatePicker()
  {
    showDatePicker(
        context: Get.context!,
        initialDate: selectedDate.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2050),
    ).then((pickedDate) {
      if(pickedDate != null && pickedDate != selectedDate.value){
        selectedDate.value = pickedDate;
      }
    });
  }

  increment(){
    counter.value++;
  }

  decrement(){
    counter.value--;
  }

}