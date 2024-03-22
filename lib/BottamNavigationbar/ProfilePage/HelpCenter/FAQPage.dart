
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/BottamNavigationbar/ProfilePage/controller/helpcentercontroller.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/customappbar.dart';
import 'package:travelapp/constant/appstring.dart';


class FAQ extends StatelessWidget {
  FAQ({super.key});

  HelpCenterController helpCenterController = Get.put(HelpCenterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppString.FAQ, height: 9.h,),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding:  EdgeInsets.only(left: 7.w,right: 7.w,top: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(bottom: 4.h),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 0.6.h),
                    height: 5.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: CustomColors.profiletext),
                      color: CustomColors.textcolor,
                    ),
                    child: TextField(
                      controller: helpCenterController.searchController,
                      decoration: InputDecoration(
                        hintText: AppString.search,focusColor: CustomColors.profiletext,
                        prefixIcon: Icon(Icons.search,color: CustomColors.profiletext,),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Text(AppString.populartopics,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
                Padding(
                  padding:  EdgeInsets.only(top: 2.h,),
                  child: Column(
                    children: [
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text(AppString.que1,),
                      //   ],
                      // ),
                      ExpansionTile(title: Text(AppString.que1,),
                        children: [
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(AppString.aq1),
                                Text(AppString.aq2),
                                Text(AppString.aq3),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ExpansionTile(title: Text(AppString.que2,),
                        children: [
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(AppString.aq21),
                                Text(AppString.aq22),
                                Text(AppString.aq23),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ExpansionTile(title: Text(AppString.que3,),
                        children: [
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(AppString.aq31),
                                Text(AppString.aq32),
                                Text(AppString.aq33),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
