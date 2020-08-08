part of 'services.dart';

abstract class Api {
  Future<List<Item>> getBeautyItems();
  Future<List<Item>> getHotelItems();
  Future<List<Item>> getApartItems();
}
