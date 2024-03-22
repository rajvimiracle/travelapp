

import 'package:flutter/material.dart';
import 'package:travelapp/CustomElements/elements/CustomColor.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/constant/appstring.dart';

class DealsModel {
  String title;
  String title1;
  String title2;
  String title3;
  Color color;
  String image;

  DealsModel({
    required this.title,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.color,
    required this.image,
  });

  factory DealsModel.fromJson(Map<String, dynamic> json) => DealsModel(
    title: json["title"],
    title1: json["title1"],
    title2: json["title2"],
    title3: json["title3"],
    color: json["color"],

    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "title1": title1,
    "title2": title2,
    "title3": title3,
    "color": color,

    "image": image,
  };
}

List<DealsModel> dealsmodel = [
  DealsModel(title: AppString.upto, title1: AppString.off, title2: AppString.Ondomestic, title3: AppString.domedtic50, color: CustomColors.background5, image: ImagePath.deals1),
  DealsModel(title: AppString.upto, title1: AppString.off, title2: AppString.Ondomestic, title3: AppString.domedtic50, color: CustomColors.background3, image: ImagePath.deals2),
  DealsModel(title: AppString.upto, title1: AppString.off, title2: AppString.Ondomestic, title3: AppString.domedtic50, color: CustomColors.background4, image: ImagePath.deals3),
  DealsModel(title: AppString.upto, title1: AppString.off, title2: AppString.Ondomestic, title3: AppString.domedtic50, color: CustomColors.iconcolor1, image: ImagePath.deals4),
];
