import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/constant/appstring.dart';


class FacilitiesModel {
  String image;
  String title;
  bool status;



  FacilitiesModel({
    required this.image,
    required this.title,
    required this.status,


  });

  factory FacilitiesModel.fromJson(Map<String, dynamic> json) => FacilitiesModel(
    image: json["image"],
    title: json["title"],
    status: json["status"],


  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "title": title,
    "status": status,


  };
}


List<FacilitiesModel>facilitiesmodel = [
  FacilitiesModel(image: ImagePath.baggage, title: AppString.baggage,status: true),
  FacilitiesModel(image: ImagePath.insurance, title: AppString.insurance,status: false),
  FacilitiesModel(image: ImagePath.meals, title: AppString.inflight,status: false),
  FacilitiesModel(image: ImagePath.wifi, title: AppString.wifi,status: false),
];