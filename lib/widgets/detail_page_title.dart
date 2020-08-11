part of 'widgets.dart';

class DetailPageTitle extends StatelessWidget {
  final String title, subtitle;

  const DetailPageTitle({
    Key key,
    this.title = '',
    this.subtitle = '',
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: blackFont.copyWith(
              fontSize: 36,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            subtitle,
            style: grayFont.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
