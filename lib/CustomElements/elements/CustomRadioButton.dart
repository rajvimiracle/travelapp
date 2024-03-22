/*import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/Controller/BookTicketController.dart';

class CustomRadioButton extends StatelessWidget {
  int? value;
  Function? groupValue;
  Function? onchanged;
   CustomRadioButton({super.key,this.value,this.groupValue,this.onchanged});

   BookTicketController controller = Get.put(BookTicketController());

  @override
  Widget build(BuildContext context) {
    return
   Obx(() =>  Radio(value: value,
     groupValue: controller.radioGroupValue.value,
     onChanged: (value) {
       controller.radioGroupValue.value = value  ?? 0 ;
     },),);
  }
}*/

