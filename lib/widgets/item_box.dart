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
    return Container(
      width: 263,
      height: 249,
      child: Column(
        children: [
          Container(),
          SizedBox(height: 16),
          Text(
            title,
            style:
                blackFont.copyWith(fontSize: 20, fontWeight: FontWeight.w400),
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
