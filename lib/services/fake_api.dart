part of 'services.dart';

class FakeApi extends Api {
  int loadTime = 1;
  @override
  Future<List<Item>> getApartItems() async {
    List<Item> items = [
      Item(
        title: 'Wooden Park',
        subtitle: 'Depok, Indonesia',
        isPopular: false,
        image: 'assets/images/a_1.png',
      ),
      Item(
        title: 'One Five',
        subtitle: 'Jakarta, Indonesia',
        isPopular: false,
        image: 'assets/images/a_2.png',
      ),
      Item(
        title: 'Minale',
        subtitle: 'Bogor, Indonesia',
        isPopular: true,
        image: 'assets/images/a_3.png',
      ),
      Item(
        title: 'Stadia Noel',
        subtitle: 'Balikpapan, Indonesia',
        isPopular: false,
        image: 'assets/images/a_4.png',
      ),
    ];
    await Future.delayed(Duration(seconds: loadTime));
    return items;
  }

  @override
  Future<List<Item>> getBeautyItems() async {
    List<Item> items = [
      Item(
        title: 'Tabby Town',
        subtitle: 'Gunung Batu, Indonesia',
        isPopular: true,
        image: 'assets/images/bb_1.png',
      ),
      Item(
        title: 'Anggana',
        subtitle: 'Bogor, Indonesia',
        isPopular: false,
        image: 'assets/images/bb_2.png',
      ),
      Item(
        title: 'Seattle Rain',
        subtitle: 'Jakarta, Indonesia',
        isPopular: false,
        image: 'assets/images/bb_3.png',
      ),
      Item(
        title: 'Wooden Pit',
        subtitle: 'Wonosobo, Indonesia',
        isPopular: false,
        image: 'assets/images/bb_4.png',
      ),
    ];
    await Future.delayed(Duration(seconds: loadTime));

    return items;
  }

  @override
  Future<List<Item>> getHotelItems() async {
    List<Item> items = [
      Item(
        title: 'Green Park',
        subtitle: 'Tangerang, Indonesia',
        isPopular: false,
        image: 'assets/images/h_1.png',
      ),
      Item(
        title: 'Podo Ware',
        subtitle: 'Madiun, Indonesia',
        isPopular: false,
        image: 'assets/images/h_2.png',
      ),
      Item(
        title: 'Silver Rain',
        subtitle: 'Bandung, Indonesia',
        isPopular: false,
        image: 'assets/images/h_3.png',
      ),
      Item(
        title: 'Cashville',
        subtitle: 'Kemang, Indonesia',
        isPopular: true,
        image: 'assets/images/h_4.png',
      ),
    ];
    await Future.delayed(Duration(seconds: loadTime));

    return items;
  }
}
