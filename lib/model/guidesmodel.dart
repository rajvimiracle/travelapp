import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/constant/appstring.dart';

class GuidesModel {
  String image;
  String title;
  String title1;


  GuidesModel({
    required this.image,
    required this.title,
    required this.title1,

  });

  factory GuidesModel.fromJson(Map<String, dynamic> json) => GuidesModel(
    image: json["image"],
    title: json["title"],
    title1: json["title1"],

  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "title": title,
    "title1": title1,
  };
}
List<GuidesModel> gudiesmodel = [
  GuidesModel(image: ImagePath.house, title: AppString.special, title1: AppString.see),
  GuidesModel(image: ImagePath.house, title: AppString.special, title1: AppString.see),
];

