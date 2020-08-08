part of 'widgets.dart';

class TestimonySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150),
      child: Row(
        children: [
          Container(
            height: 541,
            width: 405,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 366,
                    height: 502,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffe5e5e5),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(100),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 366,
                    height: 502,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(100),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/t_1.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 30),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Happy Family',
                  style: blackFont.copyWith(fontSize: 24),
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffffcc47),
                      size: 36,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'What a great trip with my family and\nI should try again next time soon ...',
                  style: blackFont.copyWith(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Jony Sinus',
                  style: grayFont.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: 210,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                  child: RaisedButton(
                    color: blueIndigo,
                    child: Text(
                      'Read Their Story',
                      style: whiteFont.copyWith(fontSize: 18),
                    ),
                    onPressed: () {},
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
