import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class ModelBottomSheet extends StatefulWidget {
  @override
  State<ModelBottomSheet> createState() => _ModelBottomSheetState();
}

class _ModelBottomSheetState extends State<ModelBottomSheet> {

  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ElevatedButton(
            onPressed: () {

              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding:  EdgeInsets.all(5.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Calendar",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                          Divider(height: 1.h,),
                          Container(
                            child: TableCalendar(
                              locale: "en_US",
                              rowHeight: 43,
                              headerStyle:
                              HeaderStyle(formatButtonVisible: false,titleCentered: true),
                              availableGestures: AvailableGestures.all,
                              selectedDayPredicate: (day) => isSameDay(day, today),
                              focusedDay: today,
                              firstDay: DateTime.utc(2010, 10, 16),
                              lastDay: DateTime.utc(2030, 3, 14),
                              onDaySelected: _onDaySelected,
                            ),
                          ),
                        ],
                      ),
                    );
                  },);

            }, child: Text("Show Canlder"),),
      ],
    );
  }
}

/*
Widget content () {
  return
}

*/
