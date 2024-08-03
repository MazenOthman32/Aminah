import 'package:amina/Resources/assets_resources.dart';
import 'package:flutter/material.dart';
import '../Models/offer_section_card_model.dart';

class OfferSectionCardViewModel extends ChangeNotifier {
  final List<OfferSectionCardModel> _offers = [
    OfferSectionCardModel(
        amount: '500 ر.س',
        distance: '1.6 كم',
        name: 'فرح يوسف',
        rating: 4.6,
        imagePath: AssetsResource.User_Png,
        notes: 'ملاحظات'),
    OfferSectionCardModel(
        amount: '500 ر.س',
        distance: '1.6 كم',
        name: 'فرح يوسف',
        rating: 4.6,
        imagePath: AssetsResource.User_Png,
        notes: 'ملاحظات'),
    OfferSectionCardModel(
        amount: '500 ر.س',
        distance: '1.6 كم',
        name: 'فرح يوسف',
        rating: 4.6,
        imagePath: AssetsResource.User_Png,
        notes: 'ملاحظات'),
    OfferSectionCardModel(
        amount: '500 ر.س',
        distance: '1.6 كم',
        name: 'فرح يوسف',
        rating: 4.6,
        imagePath: AssetsResource.User_Png,
        notes: 'ملاحظات'),
    OfferSectionCardModel(
        amount: '500 ر.س',
        distance: '1.6 كم',
        name: 'فرح يوسف',
        rating: 4.6,
        imagePath: AssetsResource.User_Png,
        notes: 'ملاحظات'),
  ];

  List<OfferSectionCardModel> get offers => _offers;
}
