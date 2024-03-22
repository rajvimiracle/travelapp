import 'package:travelapp/constant/IconPath.dart';
import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/constant/appstring.dart';

class HomeModel {
  String image;
  String title;


  HomeModel({
    required this.image,
    required this.title,

  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
    image: json["image"],
    title: json["title"],

  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "title": title,

  };
}

List<HomeModel> homemodel = [
  HomeModel(image: IconPath.filghts, title: AppString.flights),
  HomeModel(image: IconPath.hotels, title: AppString.hotels),
  HomeModel(image: IconPath.trains, title: AppString.trains),
  HomeModel(image: IconPath.event, title: AppString.events),
  HomeModel(image: IconPath.vills, title: AppString.villas),

];
List<HomeModel> notificationmodel = [
  HomeModel(image: ImagePath.plan,title: AppString.Lorem,),
  HomeModel(image: ImagePath.serach,title: AppString.Lorem),
  HomeModel(image: ImagePath.clock,title: AppString.Lorem,),
  HomeModel(image: ImagePath.plan,title: AppString.Lorem,),
];
List<HomeModel> notificationmodel1 = [
  HomeModel(image: ImagePath.discount,title: AppString.Lorem,),
  HomeModel(image: ImagePath.plan,title: AppString.Lorem,),
  HomeModel(image: ImagePath.star,title: AppString.Lorem,),
  HomeModel(image: ImagePath.assiment,title: AppString.Lorem,),
];
List<HomeModel> notificationmodel2 = [
  HomeModel(image: ImagePath.discount,title: AppString.Lorem,),
  HomeModel(image: ImagePath.assiment,title: AppString.Lorem,),

];