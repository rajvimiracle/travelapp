import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomContiner.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/constant/IconPath.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/constant/appstring.dart';
import 'package:travelapp/model/HomeModel.dart';
import 'package:travelapp/model/bannermodel.dart';
import 'package:travelapp/model/guidesmodel.dart';
import 'package:travelapp/route/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              /* padding: EdgeInsets.only(top: 4.h,left: 6.w, right: 6.w,bottom: 3.w),*/
              width: double.infinity,
              height: 35.h,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    CustomColors.background,
                    CustomColors.background1,
                  ]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.w),
                      bottomRight: Radius.circular(10.w))),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 4.h, left: 6.w, right: 6.w, bottom: 3.w),
              child: Container(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppString.name,
                                style: CustomStyles.textStyle(
                                  fontColor: Colors.white,
                                  fontSize: 10.sp,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.w),
                                child: Text(
                                  AppString.namedetail,
                                  style: CustomStyles.textStyle(
                                    fontColor: Colors.white,
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            ImagePath.women,
                            fit: BoxFit.cover,
                            height: 5.5.h,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2.h, bottom: 2.h),
                        width: double.infinity,
                        height: 6.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: searchController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: AppString.search,
                            hintStyle: TextStyle(
                              color: CustomColors.iconcolor2,
                            ),
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              size: 25,
                              color: CustomColors.iconcolor2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 22.h),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 0.4.w,
                        right: 0.4.w,
                      ),
                      child: Container(
                        height: 20.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: CustomColors.iconcolor2),
                            color: CustomColors.textcolor,
                            borderRadius: BorderRadius.circular(2.w)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 4.w,
                                  right: 4.w,
                                  top: 2.h,
                                  bottom: 0.7.h),
                              child: Row(
                                children: [
                                  Container(
/*  margin: EdgeInsets.only(left: 4.w,right: 4.w,top: 2.h,bottom: 4.h),*/
                                    width: 21.w,
                                    height: 4.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: CustomColors.foreground,
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                    child: Text(
                                      AppString.going,
                                      style: CustomStyles.textStyle(
                                        fontColor: CustomColors.iconcolor1,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10.sp,
                                        letterspacing: 1.5,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Image.asset(
                                    IconPath.clock,
                                    fit: BoxFit.cover,
                                    height: 2.5.h,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text(
                                    AppString.clock,
                                    style: CustomStyles.textStyle(
                                        fontColor: CustomColors.textcolor1,
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w700,
                                        letterspacing: 1),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 4.w,
                                  right: 4.w,
                                  top: 0.5.h,
                                  bottom: 1.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        AppString.sub,
                                        style: CustomStyles.textStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.sp,
                                            letterspacing: 1),
                                      ),
                                      Text(
                                        AppString.c1,
                                        style: CustomStyles.textStyle(
                                          fontSize: 12.sp,
                                          letterspacing: 1,
                                          fontColor: CustomColors.iconcolor2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        ImagePath.arrow,
                                        fit: BoxFit.cover,
                                      ),
                                      Text(
                                        AppString.c2,
                                        style: CustomStyles.textStyle(
                                          fontSize: 12.sp,
                                          letterspacing: 1,
                                          fontColor: CustomColors.iconcolor2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        AppString.cgk,
                                        style: CustomStyles.textStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.sp,
                                            letterspacing: 1),
                                      ),
                                      Text(
                                        AppString.c3,
                                        style: CustomStyles.textStyle(
                                          fontSize: 12.sp,
                                          letterspacing: 1,
                                          fontColor: CustomColors.iconcolor2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 4.w,
                                  right: 4.w,
                                  top: 0.2.h,
                                  bottom: 0.4.h),
                              child: Row(
                                children: [
                                  Text(
                                    AppString.lionair,
                                    style: CustomStyles.textStyle(
                                        fontColor: CustomColors.textcolor3,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    width: 1.5.w,
                                  ),
                                  Image.asset(
                                    ImagePath.circle,
                                    fit: BoxFit.cover,
                                    height: 0.9.h,
                                  ),
                                  SizedBox(
                                    width: 1.5.w,
                                  ),
                                  Text(
                                    AppString.economy,
                                    style: CustomStyles.textStyle(
                                        fontColor: CustomColors.textcolor3,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    width: 1.5.w,
                                  ),
                                  Image.asset(
                                    ImagePath.circle,
                                    fit: BoxFit.cover,
                                    height: 0.9.h,
                                  ),
                                  SizedBox(
                                    width: 1.5.w,
                                  ),
                                  Text(
                                    AppString.direct,
                                    style: CustomStyles.textStyle(
                                        fontColor: CustomColors.textcolor3,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    Container(
// height: 47.w,
// width: 100.w,

                      child: Wrap(
                        spacing: 9.2.w,
                        runSpacing: 1.h,
                        children: List.generate(homemodel.length, (index) {
                          return Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  child: Image.asset(
                                    homemodel[index].image,
                                    fit: BoxFit.cover,
                                    height: 2.5.h,
                                  ),
                                  radius: 22,
                                ),
                                Text(
                                  homemodel[index].title,
                                  style: CustomStyles.textStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    InkWell(
                    onTap: () => Get.toNamed(Routes.bookticketpage),
                      child: CustomContiner(
                        height: 6.5.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            gradient: LinearGradient(colors: [
                              CustomColors.background,
                              CustomColors.background1,
                            ])),
                        child: Center(
                            child: Text(
                          AppString.tickets,
                          style: CustomStyles.textStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp,
                              fontColor: CustomColors.textcolor),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 3.5.h,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                             children: [
                               Text(
                                 AppString.Popular,
                                 style: CustomStyles.textStyle(
                                     fontColor: CustomColors.textcolor2,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 14.sp),
                               ),
                               SizedBox(
                                 width: 3.w,
                               ),
                               Image.asset(
                                 "assets/images/img_fire.png",
                                 fit: BoxFit.cover,
                                 height: 2.5.h,
                               ),
                             ],
                           ),

/*Icon(Icons.local_fire_department_rounded,color: Colors.deepOrange,size: 25,),*/
                           /* SizedBox(
                              width: 40.w,
                            ),*/
                            InkWell(
                              onTap: () => Get.toNamed(Routes.dealspage),
                              child: Text(
                                AppString.view,
                                style: CustomStyles.textStyle(
                                    fontColor: CustomColors.iconcolor1,
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Container(
                            height: 20.h,
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
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return SizedBox(
                                  width: 5.w,
                                );
                              },
                            )),
                        SizedBox(
                          height: 3.5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                             children: [
                               Text(
                                 AppString.guides,
                                 style: CustomStyles.textStyle(
                                     fontColor: CustomColors.textcolor2,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 14.sp),
                               ),
                               SizedBox(
                                 width: 3.w,
                               ),
                               Image.asset(
                                 "assets/images/img_fire.png",
                                 fit: BoxFit.cover,
                                 height: 2.5.h,
                               ),
                             ],
                           ),
/*Icon(Icons.local_fire_department_rounded,color: Colors.deepOrange,size: 25,),*/
                          /*  SizedBox(
                              width: 50.w,
                            ),*/
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
                          height: 4.h,
                        ),
                        Container(
                          height: 33.h,
                          width: double.infinity,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: gudiesmodel.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    gudiesmodel[index].image,
                                    fit: BoxFit.cover,
                                    height: 15.h,
                                  ),
                                  SizedBox(
                                    height: 2.5.h,
                                  ),
                                  Text(
                                    AppString.special,
                                    style: CustomStyles.textStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    AppString.heaven,
                                    style: CustomStyles.textStyle(
                                        fontWeight: FontWeight.normal,
                                        fontColor: CustomColors.iconcolor2,
                                        fontSize: 12.sp),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    AppString.see,
                                    style: CustomStyles.textStyle(
                                        fontWeight: FontWeight.normal,
                                        fontColor: CustomColors.iconcolor1,
                                        fontSize: 12.sp),
                                  ),
                                ],
                              ));
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                width: 5.w,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
