import 'package:travelapp/constant/ImagePath.dart';

class BannerModel {
  String image;
  BannerModel({
    required this.image,
  });
  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
    image: json["image"],
  );
  Map<String, dynamic> toJson() => {
    "image": image,
  };
}
List<BannerModel> bannermodel =[
  BannerModel(image: ImagePath.banner),
  BannerModel(image: ImagePath.banner),
  BannerModel(image: ImagePath.banner),
  BannerModel(image: ImagePath.banner),
];
