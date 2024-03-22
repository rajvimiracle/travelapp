import 'package:travelapp/constant/IconPath.dart';
import 'package:travelapp/constant/appstring.dart';

class FlightsModel {
  String title;
  String Subtitle;


  FlightsModel({
    required this.title,
    required this.Subtitle,

  });

  factory FlightsModel.fromJson(Map<String, dynamic> json) => FlightsModel(
    title: json["title"],
    Subtitle: json["subtitle"],

  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "Subtitle": Subtitle,

  };
}

List<FlightsModel>flightmodel = [
   FlightsModel(title: AppString.fullName, Subtitle: AppString.jamesBrown),
   FlightsModel(title: AppString.DoB, Subtitle: AppString.date),
   FlightsModel(title: AppString.nationality, Subtitle: AppString.indonesia),
   FlightsModel(title: AppString.email, Subtitle: AppString.com),
   FlightsModel(title: AppString.iDNumber, Subtitle: AppString.phone1),
   FlightsModel(title: AppString.phoneNumber, Subtitle: AppString.phone2),
];
