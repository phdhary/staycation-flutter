part of 'widgets.dart';

class DetailPageFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 166,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        crossAxisSpacing: 50,
        mainAxisSpacing: 0,
        childAspectRatio: 3 / 2,
        children: [
          LandingSectionItem(
            image: 'assets/images/ic_bedroom.png',
            amount: 5,
            title: 'bedroom',
          ),
          LandingSectionItem(
            image: 'assets/images/ic_livingroom.png',
            amount: 1,
            title: 'living room',
          ),
          LandingSectionItem(
            image: 'assets/images/ic_bathroom.png',
            amount: 3,
            title: 'bath room',
          ),
          LandingSectionItem(
            image: 'assets/images/ic_diningroom.png',
            amount: 1,
            title: 'dining room',
          ),
          LandingSectionItem(
            image: 'assets/images/ic_wifi.png',
            amount: 10,
            title: 'mbp/s',
          ),
          LandingSectionItem(
            image: 'assets/images/ic_ac.png',
            amount: 7,
            title: 'unit ready',
          ),
          LandingSectionItem(
            image: 'assets/images/ic_kulkas.png',
            amount: 2,
            title: 'refrigator',
          ),
          LandingSectionItem(
            image: 'assets/images/ic_tv.png',
            amount: 4,
            title: 'television',
          ),
        ],
      ),
    );
  }
}
