
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/BottamNavigationbar/DiscountPage/DiscountPage.dart';
import 'package:travelapp/BottamNavigationbar/HomePage/HomePage.dart';
import 'package:travelapp/BottamNavigationbar/NotificationPage/NotificationPage.dart';
import 'package:travelapp/BottamNavigationbar/ProfilePage/ProfilePage.dart';
import 'package:travelapp/BottamNavigationbar/TicketPage/TicketPage.dart';
import 'package:travelapp/constant/IconPath.dart';

class BotomNavigationBar extends StatefulWidget {
  BotomNavigationBar({super.key});

  @override
  State<BotomNavigationBar> createState() => _BotomNavigationBarState();
}

class _BotomNavigationBarState extends State<BotomNavigationBar> {
  // int currentIndex = 0;
  int selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    TicketPage(),
    DiscountPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
return Scaffold(
      // body: (currentIndex == 0) ? HomePage() : (currentIndex == 1)
      //     ? CartPage()
      //     : (currentIndex == 2) ? Knowledgpage() : ProfilePage(),
      body: _widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: Container(

        width: double.infinity,

        decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2,

          ),
        ],
          borderRadius: BorderRadius.only(topLeft:  Radius.circular(16),topRight:  Radius.circular(16),),
       /*   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15),),*/

        ),

        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.house_sharp,size: 25,),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_number_outlined,size: 25,),
              label: "Ticke",

            ),
            BottomNavigationBarItem(
              icon: Image.asset(IconPath.discount,scale: 1,),
              label: "Discount",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined,size: 25,),
              label: "Notifiaction",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined,size: 25,),
              label: "Profile",
            ),

          ],
          onTap: _onItemTapped,
          elevation: 5,
          currentIndex: selectedIndex,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.house_sharp),
            label: "sdf",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_number_outlined),
            label: "sdff",

          ),
          BottomNavigationBarItem(
              icon: Image.asset(IconPath.discount),
            label: "dfhj",

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: "dfg",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "eyu",
          ),

        ],
        onTap: _onItemTapped,
        elevation: 5,
        currentIndex: selectedIndex,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
      ),*/

    );

  }
}
