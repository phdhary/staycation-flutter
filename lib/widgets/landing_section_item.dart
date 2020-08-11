part of 'widgets.dart';

class LandingSectionItem extends StatelessWidget {
  final String image;
  final double amount;
  final String title;

  const LandingSectionItem({Key key, @required this.image, this.amount, this.title = ""})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 32,
            width: 32,
            child: Image.asset(image),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                amount.toString(),
                style: bluindarkFont.copyWith(fontSize: 16),
              ),
              Text(' '),
              Text(
                title,
                style: grayFont.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
              )
            ],
          ),
        ],
      ),
    );
  }
}
