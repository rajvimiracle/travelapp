import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/CustomElements/elements/CustomStyle.dart';
import 'package:travelapp/constant/appstring.dart';

import '../../../CustomElements/elements/CustomContiner.dart';

class SeatsPage extends StatefulWidget {
  const SeatsPage({super.key});

  @override
  State<SeatsPage> createState() => _SeatsPageState();
}

class _SeatsPageState extends State<SeatsPage> {

  var  countSeatLeft = 2*7;
  var  countSeatCenter = 2*7;
  var  countSeatRight = 2*7;
  var listSeatLeft =[];
  var listSeatCenter =[];
  var listSeatRight =[];

  @override
  void initState() {
    initSeatValueToList(listSeatLeft,countSeatLeft,"l");
    initSeatValueToList(listSeatCenter,countSeatCenter,"c");
    initSeatValueToList(listSeatRight,countSeatRight,"r");
    setVisiblitySeat();
    super.initState();
  }

  initSeatValueToList(List data,count,side){
    var objectData;
    for(int i=0;i< count; i++){

      objectData = {
        "id":side + "${i+1}",
        "isfirst": false,
        "isthird": true,
        "issecond":false,
        "isVisible": true,


      };
      setState(() {
        data.add(objectData);
      });

    }
    print(data);
  }

  setVisiblitySeat(){
    setState(() {

    });
  }
  setSelectedToBooked() {
    listSeatLeft.forEach((seat) {
      if (seat["issecond"]) {
        setState(() {
          seat["isfirst"] = true;
        });
      }
    });
    listSeatCenter.forEach((seat) {
      if (seat["issecond"]) {
        setState(() {
          seat["isfirst"] = true;
        });
      }
    });
    listSeatRight.forEach((seat) {
      if (seat["issecond"]) {
        setState(() {
          seat["isfirst"] = true;
        });
      }
    });
    //this function to loop every side of seat, from selected to booked, u also can this function to send to u'r serves side
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 4.w,right: 4.w,bottom: 3.h),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(bottom: 1.5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 6.w),
                          width: 25.w,
                          child:
                          Row(
                            children: [
                              Text(AppString.a,style: CustomStyles.textStyle(fontSize: 17.sp,fontColor: CustomColors.textcolor5),),
                              SizedBox(width: 10.w,),
                              Text(AppString.b,style: CustomStyles.textStyle(fontSize: 17.sp,fontColor: CustomColors.textcolor5),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  /*   SizedBox(width: 28.w,),*/
                  Container(

                    child: Row(
                      children: [
                        Container(
                          width: 20.w,
                          child:
                          Row(
                            children: [
                              Text(AppString.c,style: CustomStyles.textStyle(fontSize: 17.sp,fontColor: CustomColors.textcolor5),),
                              SizedBox(width: 8.w,),
                              Text(AppString.d,style: CustomStyles.textStyle(fontSize: 17.sp,fontColor: CustomColors.textcolor5),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  /*      SizedBox(width: 28.w,),*/
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 20.w,
                          child:
                          Row(
                            children: [
                              Text(AppString.e,style: CustomStyles.textStyle(fontSize: 17.sp,fontColor: CustomColors.textcolor5),),
                              SizedBox(width: 8.w,),
                              Text(AppString.f,style: CustomStyles.textStyle(fontSize: 17.sp,fontColor: CustomColors.textcolor5),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /*  SizedBox(height: 6.h,),*/
            Expanded(
              child: SingleChildScrollView(
                child: Container(

                    margin: EdgeInsets.symmetric(horizontal: 3.w),
                    /* height: 100,*/
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: widgetSeat(listSeatLeft,false),),
                        SizedBox(width: 5.w,),
                        Expanded(child: widgetSeat(listSeatCenter,true),),
                        SizedBox(width: 5.w,),
                        Expanded(child: widgetSeat(listSeatRight,false),),

                      ],
                    )
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding:  EdgeInsets.only(bottom: 6.h),
              child: InkWell(
                onTap: () {
                  setSelectedToBooked();
                },
                child: CustomContiner(

                  height: 6.5.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      gradient: LinearGradient(colors: [
                        CustomColors.background,
                        CustomColors.background1,
                      ])),
                  child: Center(
                      child: Text(
                        AppString.continue1,
                        style: CustomStyles.textStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                            fontColor: CustomColors.textcolor),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget widgetSeat(List dataSeat,bool isCenter){
    return Container(
      width: 15.w,
      child: GridView.builder(

        shrinkWrap: true,

        physics: NeverScrollableScrollPhysics(

        ),
        itemCount: dataSeat.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isCenter? 2 : 2,
          childAspectRatio: 0.5/0.5,
          crossAxisSpacing: 1.w,
        ),
        itemBuilder: (context, index) {
          return Visibility(
            visible: dataSeat[index]["isVisible"],
            child: GestureDetector(
              onTap: () {
                setState(() {
                  dataSeat[index]["issecond"] =
                  !dataSeat[index]["issecond"];
                });
              },
              child: Container(
                margin: EdgeInsets.all(5),
                height: 6.h,
                width: 6.w,
                decoration: BoxDecoration(
                  color: dataSeat[index]["isfirst"]
                      ? Color(0xfff0f2ed)
                      : dataSeat[index]["issecond"]?
                  Color(0xff5495FF): Color(0xfff0f2ed),
                  borderRadius: BorderRadius.circular(5),

                ),

              ),
            ),
          );
        },),
    );
  }
}






