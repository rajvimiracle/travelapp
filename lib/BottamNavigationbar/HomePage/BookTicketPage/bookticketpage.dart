import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/BottamNavigationbar/HomePage/BookTicketPage/FlightsPage.dart';
import 'package:travelapp/BottamNavigationbar/HomePage/BookTicketPage/TrainPage.dart';
import 'package:travelapp/Controller/BookTicketController.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/CustomElements/elements/customappbar.dart';
import 'package:travelapp/constant/appstring.dart';
import 'package:travelapp/model/bannermodel.dart';
import '../../../CustomElements/elements/CustomColor.dart';

class BookTicketPage extends StatefulWidget {
  const BookTicketPage({super.key,});

  @override
  State<BookTicketPage> createState() => _BookTicketPageState();
}

class _BookTicketPageState extends State<BookTicketPage> with SingleTickerProviderStateMixin{

  BookTicketController controller = Get.put(BookTicketController());
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    /*  Get.lazyPut(() => BookTicketController());*/
    return  Scaffold(
      appBar: CustomAppBar(
        title: AppString.book,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(
            top: 5.h,
            right: 7.w,
            left: 7.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 66.h,
                  width: 85.w,
                  /*  padding: EdgeInsets.only(
                      top: 1.5.h, right: 5.w, left: 5.w, ),*/
                  decoration: BoxDecoration(
                    border: Border.all(color: CustomColors.iconcolor2),
                    borderRadius: BorderRadius.circular(2.w),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 5.h,
                        child: TabBar(
                          controller: tabController,
                          padding: EdgeInsets.only(left: 3.w,right: 3.w),
                          indicatorColor: CustomColors.background,
                          dividerColor: CustomColors.iconcolor2,
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelColor: CustomColors.background,
                          tabs: [
                            Text(AppString.flight,style: CustomStyles.textStyle(fontSize: 14.sp),),
                            Text(AppString.trains,style: CustomStyles.textStyle(fontSize: 14.sp),),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top:1.5.h,left: 4.w,right: 4.w,bottom: 1.5.h),
                        width: double.infinity,
                        height: 60.h,

                        child: TabBarView(
                          controller: tabController,
                          children: [
                            FlightsPage(),
                            TrainPage(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    Text(
                      AppString.Popular,
                      style: CustomStyles.textStyle(
                          fontColor: CustomColors.textcolor2,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Image.asset(
                      "assets/images/img_fire.png",
                      fit: BoxFit.cover,
                      height: 2.5.h,
                    ),
                    /*Icon(Icons.local_fire_department_rounded,color: Colors.deepOrange,size: 25,),*/
                    SizedBox(
                      width: 40.w,
                    ),
                    Text(
                      AppString.view,
                      style: CustomStyles.textStyle(
                          fontColor: CustomColors.iconcolor1,
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                    height: 18.h,
                    width: double.infinity,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: bannermodel.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Image.asset(
                            bannermodel[index].image,
                            fit: BoxFit.cover,
                            height: 20,
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 5.w,
                        );
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

}