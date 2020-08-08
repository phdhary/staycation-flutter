part of 'widgets.dart';

class MostPickedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'Most Picked',
              style: bluindarkFont.copyWith(fontSize: 24),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              children: [
                MostPickedSectionItem(
                  image: 'assets/images/mp_1.png',
                  width: 361,
                  height: 460,
                  price: '50',
                  title: 'Blue Origin Fams',
                  subtitle: 'Jakarta, Indonesia',
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    MostPickedSectionItem(
                      image: 'assets/images/mp_2.png',
                      width: 361,
                      height: 215,
                      price: '22',
                      title: 'Ocean Land',
                      subtitle: 'Bandung, Indonesia',
                    ),
                    SizedBox(height: 30),
                    MostPickedSectionItem(
                      image: 'assets/images/mp_3.png',
                      width: 361,
                      height: 215,
                      price: '62',
                      title: 'Vinna Villa',
                      subtitle: 'Malang, Indonesia',
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    MostPickedSectionItem(
                      image: 'assets/images/mp_4.png',
                      width: 361,
                      height: 215,
                      price: '856',
                      title: 'Stark House',
                      subtitle: 'Malang, Indonesia',
                    ),
                    SizedBox(height: 30),
                    MostPickedSectionItem(
                      image: 'assets/images/mp_5.png',
                      width: 361,
                      height: 215,
                      price: '72',
                      title: 'Bobox',
                      subtitle: 'Medan, Indonesia',
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
