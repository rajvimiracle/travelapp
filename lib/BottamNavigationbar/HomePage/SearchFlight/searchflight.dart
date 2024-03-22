import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import 'package:travelapp/BottamNavigationbar/HomePage/SearchFlight/Airlines.dart';
import 'package:travelapp/BottamNavigationbar/HomePage/SearchFlight/Facilities.dart';
import 'package:travelapp/BottamNavigationbar/HomePage/SearchFlight/Seats.dart';
import 'package:travelapp/Controller/BookTicketController.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/customappbar.dart';
import 'package:travelapp/constant/appstring.dart';

import '../../../CustomElements/elements/CustomColor.dart';
import '../BookTicketPage/bookticketpage.dart';

class SearchFlightPage extends StatefulWidget {
  const SearchFlightPage({super.key});

  @override
  State<SearchFlightPage> createState() => _SearchFlightPageState();
}

class _SearchFlightPageState extends State<SearchFlightPage>
    with SingleTickerProviderStateMixin {
  BookTicketController controller = Get.put(BookTicketController());
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 3, vsync: this); // Specify the number of tabs
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                CustomContiner(
                    height: 16.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15.w),
                        bottomLeft: Radius.circular(15.w),
                      ),
                      gradient: LinearGradient(colors: [
                        CustomColors.background,
                        CustomColors.background1,
                      ]),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 5.h, bottom: 3.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () => Get.offAll(BookTicketPage()),
                            child: Icon(
                              Icons.arrow_back,
                              size: 4.h,
                              color: CustomColors.textcolor,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    AppString.yogyakarta,
                                    style: CustomStyles.textStyle(
                                        fontSize: 15.sp,
                                        fontColor: CustomColors.textcolor,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 2.h,
                                    color: CustomColors.textcolor,
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text(
                                    AppString.lombok,
                                    style: CustomStyles.textStyle(
                                        fontSize: 15.sp,
                                        fontColor: CustomColors.textcolor,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    DateFormat.yMMMd()
                                        .format(
                                            controller.selectedDate!.value)
                                        .toString(),
                                    style: CustomStyles.textStyle(
                                        fontSize: 13.sp,
                                        fontColor: CustomColors.textcolor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    ",${controller.selectValue.value}",
                                    style: CustomStyles.textStyle(
                                        fontSize: 13.sp,
                                        fontColor: CustomColors.textcolor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    ",${controller.counter.value} pax",
                                    style: CustomStyles.textStyle(
                                        fontSize: 13.sp,
                                        fontColor: CustomColors.textcolor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
                Container(
                  padding: EdgeInsets.only(top: 5.h,),
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: CustomColors.background,

                        isScrollable: false,
                        unselectedLabelColor: CustomColors.iconcolor2,
                        indicatorColor: CustomColors.iconcolor2,
                        padding: EdgeInsets.only(left: 4.w,right: 4.w),
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorPadding: EdgeInsets.only(left: 4.w,right: 4.w,),
                          controller: _tabController,
                          tabs:[
                                 Padding(
                                   padding:  EdgeInsets.only(bottom: 2.h),
                                   child: Column(
                                                           children: [
                                                               CustomContiner(
                                        width: 6.w,
                                       height: 3.h,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.all(Radius.circular(80)),
                                          border: Border.all(color: CustomColors.iconcolor2),
                                             ),
                                            child: Center(
                                                   child: Text("1",style: CustomStyles.textStyle(fontSize: 11.sp),),
                                                     ),
                                                       ),
                                                Text(AppString.airlines,style: CustomStyles.textStyle(fontSize: 11.sp)),
                                                     ],
                                              ),
                                 ),
                            Padding(
                              padding:  EdgeInsets.only(bottom: 2.h),
                              child: Column(
                                children: [
                                  CustomContiner(
                                    width: 6.w,
                                    height: 3.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(80)),
                                      border: Border.all(color: CustomColors.iconcolor2),
                                    ),
                                    child: Center(
                                      child: Text("2",style: CustomStyles.textStyle(fontSize: 11.sp),),
                                    ),
                                  ),
                                  Text(AppString.seats,style: CustomStyles.textStyle(fontSize: 11.sp)),
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(bottom: 2.h),
                              child: Column(
                                children: [
                                  CustomContiner(
                                    width: 6.w,
                                    height: 3.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(80)),
                                      border: Border.all(color: CustomColors.iconcolor2),
                                    ),
                                    child: Center(
                                      child: Text("3",style: CustomStyles.textStyle(fontSize: 11.sp),),
                                    ),
                                  ),
                                  Text(AppString.facilities,style: CustomStyles.textStyle(fontSize: 11.sp)),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ],
                  ),
                ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top:1.5.h,left: 4.w,right: 4.w,),
                /*  height: MediaQuery.of(context).size.height,*/
                   width: double.infinity,
                   child: TabBarView(
                       controller: _tabController,
                            children: [
                               Airlines(),
                              SeatsPage(),
                              FacilitiesPage(),
                  ],
               ),
               ),
            ),
                ]
                    )
      ),
    ),
    );
  }
}