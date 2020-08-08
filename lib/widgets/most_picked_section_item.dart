part of 'widgets.dart';

class MostPickedSectionItem extends StatelessWidget {
  final String image, price, title, subtitle;
  final double width, height;
  final void Function() onTap;

  const MostPickedSectionItem({
    Key key,
    @required this.image,
    @required this.width,
    @required this.height,
    this.onTap,
    this.price = '',
    this.title = '',
    this.subtitle = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // image: DecorationImage(image: AssetImage(image)),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.8,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black54,
                    ],
                    stops: (height > 215)
                        ? [
                            0.7,
                            1.0,
                          ]
                        : [
                            0.5,
                            1.0,
                          ]),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: width / 2,
                height: 40,
                decoration: BoxDecoration(
                  color: pink,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      price,
                      style: whiteFont.copyWith(fontSize: 16),
                    ),
                    Text(
                      ' per night',
                      style:
                          whiteFont.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: whiteFont.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: whiteFont.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
