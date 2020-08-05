part of 'widgets.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forget Busy Work,\nStart Next Vacation',
                  style: bluindarkFont.copyWith(
                    fontSize: 42,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "We provide what you need to enjoy your\nholiday with family. Time to make another\nmemorable moments.",
                  style: grayFont.copyWith(fontSize: 16),
                ),
                SizedBox(height: 30),
                Container(
                  width: 210,
                  height: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(4)),
                  child: RaisedButton(
                    color: blueIndigo,
                    child: Text(
                      'Show Me Now',
                      style: whiteFont.copyWith(fontSize: 18),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 82),
                Row(
                  children: [
                    LandingItem(
                      image: 'assets/images/ic_traveler.png',
                      amount: '80,409',
                      title: 'travelers',
                    ),
                    SizedBox(width: 50),
                    LandingItem(
                      image: 'assets/images/ic_treasure.png',
                      amount: '862',
                      title: 'treasure',
                    ),
                    SizedBox(width: 50),
                    LandingItem(
                      image: 'assets/images/ic_cities.png',
                      amount: '1,492',
                      title: 'cities',
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: 159),
          Container(
            width: 559,
            height: 450,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 520,
                    height: 410.63,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      border: Border.all(
                        color: Color(0xffe5e5e5),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 520,
                    height: 410.63,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/image_3.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
