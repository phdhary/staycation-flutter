part of 'widgets.dart';

class ItemBox extends StatelessWidget {
  final String image, title, subtitle;
  final bool isPopular;

  const ItemBox({
    Key key,
    @required this.image,
    this.title = '',
    this.subtitle = '',
    this.isPopular = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = 263;
    double height = 249;
    return Container(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                Container(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                (isPopular)
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: width * 0.7,
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
                                'Popular',
                                style: whiteFont.copyWith(fontSize: 16),
                              ),
                              Text(
                                ' Choice',
                                style: whiteFont.copyWith(
                                    fontSize: 16, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
          SizedBox(height: 16),
          Text(
            title,
            style: blackFont.copyWith(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          Text(
            subtitle,
            style: grayFont.copyWith(fontSize: 15, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
