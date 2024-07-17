// To parse this JSON data, do
//
//     final onBoardingModel = onBoardingModelFromJson(jsonString);

import 'dart:convert';

OnBoardingModel onBoardingModelFromJson(String str) =>
    OnBoardingModel.fromJson(json.decode(str));

String onBoardingModelToJson(OnBoardingModel data) =>
    json.encode(data.toJson());

class OnBoardingModel {
  List<Datum>? data;

  OnBoardingModel({
    this.data,
  });

  factory OnBoardingModel.fromJson(Map<String, dynamic> json) =>
      OnBoardingModel(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  int? id;
  String? title;
  String? content;
  String? image;

  Datum({
    this.id,
    this.title,
    this.content,
    this.image,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        content: json["content"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
        "image": image,
      };
}
