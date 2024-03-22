import 'package:travelapp/constant/ImagePath.dart';
import 'package:travelapp/constant/appstring.dart';

class FacilitiesModel {
  String image;
  String title;



  FacilitiesModel({
    required this.image,
    required this.title,


  });

  factory FacilitiesModel.fromJson(Map<String, dynamic> json) => FacilitiesModel(
    image: json["image"],
    title: json["title"],


  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "title": title,


  };
}



List<FacilitiesModel> airlinesmodel = [
    FacilitiesModel(image: ImagePath.lion, title: AppString.lion1),
    FacilitiesModel(image: ImagePath.citilink, title: AppString.citilink),
    FacilitiesModel(image: ImagePath.garuda, title: AppString.garuda),
    FacilitiesModel(image: ImagePath.AirAsia, title: AppString.airAsia),
    FacilitiesModel(image: ImagePath.Sriwijaya, title: AppString.sriwijaya),
    FacilitiesModel(image: ImagePath.superAirJet, title: AppString.superair),
    FacilitiesModel(image: ImagePath.pelitaAir, title: AppString.pelitaAir),
    FacilitiesModel(image: ImagePath.wingsAir, title: AppString.wingsAir),
];

List<FacilitiesModel> paymentmodel = [
  FacilitiesModel(image: ImagePath.visa, title: AppString.credit),
  FacilitiesModel(image: ImagePath.netbanking, title: AppString.netbanking),
  FacilitiesModel(image: ImagePath.upi, title: AppString.UPIPayment),
  FacilitiesModel(image: ImagePath.wallet, title: AppString.Wallet),
];

List<FacilitiesModel> languagemodel = [
  FacilitiesModel(image: ImagePath.india, title: AppString.India),
  FacilitiesModel(image: ImagePath.englishus, title: AppString.englishus),
  FacilitiesModel(image: ImagePath.english, title: AppString.englishen),
  FacilitiesModel(image: ImagePath.italiano, title: AppString.italiano),
  FacilitiesModel(image: ImagePath.bahasaindonesia, title: AppString.BahasaIndonesia),
  FacilitiesModel(image: ImagePath.deutsch, title: AppString.deutsch),
];