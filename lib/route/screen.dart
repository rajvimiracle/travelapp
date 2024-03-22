import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/BottamNavigationbar/DiscountPage/DiscountPage.dart';
import 'package:travelapp/BottamNavigationbar/DiscountPage/VoucherDetails.dart';
import 'package:travelapp/BottamNavigationbar/HomePage/BookTicketPage/FlightPage1.dart';

import 'package:travelapp/BottamNavigationbar/HomePage/BookTicketPage/SuccessFullyPage.dart';
import 'package:travelapp/BottamNavigationbar/HomePage/BookTicketPage/paymentpage.dart';
import 'package:travelapp/BottamNavigationbar/HomePage/BookTicketPage/paymentpage.dart';
import 'package:travelapp/BottamNavigationbar/HomePage/BookTicketPage/selectflight.dart';
import 'package:travelapp/BottamNavigationbar/HomePage/HomePage.dart';
import 'package:travelapp/BottamNavigationbar/HomePage/BookTicketPage/bookticketpage.dart';
import 'package:travelapp/BottamNavigationbar/HomePage/SearchFlight/Seats.dart';
import 'package:travelapp/BottamNavigationbar/HomePage/SearchFlight/searchflight.dart';
import 'package:travelapp/BottamNavigationbar/ProfilePage/HelpCenter/BookingPage.dart';
import 'package:travelapp/BottamNavigationbar/ProfilePage/HelpCenter/FAQPage.dart';
import 'package:travelapp/BottamNavigationbar/ProfilePage/HelpCenter/FlightsPage.dart';
import 'package:travelapp/BottamNavigationbar/ProfilePage/HelpCenter/PaymentPage.dart';
import 'package:travelapp/BottamNavigationbar/ProfilePage/HelpCenterPage.dart';
import 'package:travelapp/BottamNavigationbar/ProfilePage/LanguagesPage.dart';
import 'package:travelapp/BottamNavigationbar/ProfilePage/ProfileInformation.dart';
import 'package:travelapp/BottamNavigationbar/ProfilePage/ProfilePage.dart';
import 'package:travelapp/BottamNavigationbar/ProfilePage/TermsService.dart';
import 'package:travelapp/BottamNavigationbar/TicketPage/RefundPage.dart';
import 'package:travelapp/BottamNavigationbar/TicketPage/TicketPage.dart';
import 'package:travelapp/BottamNavigationbar/TicketPage/TicketPage1.dart';
import 'package:travelapp/BottamNavigationbar/bottomnavigationbar.dart';
import 'package:travelapp/Screen/Login/CreateNewPassword.dart';
import 'package:travelapp/Screen/Login/ForgetPassword.dart';
import 'package:travelapp/Screen/Login/ForgetPasswordOtp.dart';
import 'package:travelapp/Screen/Login/LoginScreen.dart';
import 'package:travelapp/Screen/Login/SignupScreen.dart';
import 'package:travelapp/Screen/RegisterSucces.dart';
import 'package:travelapp/Screen/SplashScreen.dart';
import 'package:travelapp/Screen/SplashScreen2.dart';

import 'package:travelapp/route/routes.dart';

class Screens {

  static final routes = [
    GetPage(name: Routes.bottomnavigationbar, page: () => BotomNavigationBar()),
    GetPage(name: Routes.homepage, page: () => HomePage()),
    GetPage(name: Routes.bookticketpage, page: () => BookTicketPage()),
    GetPage(name: Routes.searchflightpage, page: () => SearchFlightPage()),
    GetPage(name: Routes.seatspage, page: () => SeatsPage()),
    GetPage(name: Routes.selectflightspage, page: () => SelectFlightPage()),
    GetPage(name: Routes.flightspage1, page: () => Flight_Page()),
   // GetPage(name: Routes.paymentpage, page: () => PaymentPage()),
    GetPage(name: Routes.successfully, page: () => SuccessFullyPage()),
    GetPage(name: Routes.dealspage, page: () => DiscountPage()),
    GetPage(name: Routes.voucherpage, page: () => VoucherDetailsPage()),

    GetPage(name: Routes.splashScreen, page: () => SplashScreen()),
    GetPage(name: Routes.splashScreen2, page: () => SplashS2()),

    GetPage(name: Routes.loginScreen, page: () => LoginScreen()),
    GetPage(name: Routes.signupScreen, page: () => SignupScreen()),
    GetPage(name: Routes.forgetpassword, page: () => ForgetPassword(),),
    GetPage(name: Routes.fpotp, page: () => FPotp(),),
    GetPage(name: Routes.newpass, page: () => NewPassword(),),
    GetPage(name: Routes.registersucces, page: () => RegisterSucces(),),

    GetPage(name: Routes.ticketpage, page: () => TicketPage(),),
    GetPage(name: Routes.ticketpage1, page: () => TicketPage1(),),
    GetPage(name: Routes.refund, page: () => RefundPage(),),

    GetPage(name: Routes.profile, page: () => ProfilePage(),),
    GetPage(name: Routes.profileinfo, page: () => ProfilrInfo(),),
    GetPage(name: Routes.termsservice, page: () => TermsService(),),
    GetPage(name: Routes.languagespage, page: () => LanguagesPage(),),

    GetPage(name: Routes.helpcenter, page: () => HelpCenter(),),
    GetPage(name: Routes.faq, page: () => FAQ(),),
    GetPage(name: Routes.booking, page: () => Booking(),),
    GetPage(name: Routes.Paymenthelp, page: () => Payment_Help(),),
    GetPage(name: Routes.fights, page: () => Fights(),),
  ];
}