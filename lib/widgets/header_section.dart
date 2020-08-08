part of 'widgets.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 150),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Color(0xffe5e5e5), width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Logo(),
          Container(
            child: Row(
              children: [
                NavItem(
                  text: 'Home',
                  isSelected: true,
                ),
                NavItem(
                  text: 'Browse By',
                ),
                NavItem(
                  text: 'Stories',
                ),
                NavItem(
                  text: 'Agents',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
