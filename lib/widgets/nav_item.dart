part of 'widgets.dart';

class NavItem extends StatelessWidget {
  final String text;
  final bool isSelected;

  const NavItem({Key key, this.text = "", this.isSelected = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50),
      child: Text(
        text,
        style: (isSelected)
            ? bluinFont.copyWith(fontSize: 16, fontWeight: FontWeight.w400)
            : bluindarkFont.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
      ),
    );
  }
}
