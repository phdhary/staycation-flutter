part of 'widgets.dart';

class FooterSectionItem extends StatelessWidget {
  final String sectionTitle, item1, item2, item3;
  final void Function() onTapItem1, onTapItem2, onTapItem3;

  FooterSectionItem({
    Key key,
    this.sectionTitle = '',
    this.item1 = '',
    this.item2 = '',
    this.item3 = '',
    this.onTapItem1,
    this.onTapItem2,
    this.onTapItem3,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sectionTitle,
            style: blackFont.copyWith(fontSize: 18),
          ),
          SizedBox(height: 23),
          GestureDetector(
            onTap: () {
              if (onTapItem1 != null) {
                onTapItem1();
              }
            },
            child: Text(
              item1,
              style: grayFont.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              if (onTapItem2 != null) {
                onTapItem2();
              }
            },
            child: Text(
              item2,
              style: grayFont.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              if (onTapItem3 != null) {
                onTapItem3();
              }
            },
            child: Text(
              item3,
              style: grayFont.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
