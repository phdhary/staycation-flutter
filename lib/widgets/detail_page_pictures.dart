part of 'widgets.dart';

class DetailPagePictures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150),
      child: Row(
        children: [
          Container(
            width: 643,
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/dp_1.png'),
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            children: [
              Container(
                width: 487,
                height: 245,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/dp_2.png'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 487,
                height: 245,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/dp_3.png'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
