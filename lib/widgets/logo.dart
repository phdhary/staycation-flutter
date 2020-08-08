part of 'widgets.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            'Stay',
            style: bluinFont.copyWith(fontSize: 26),
          ),
          Text(
            'cation.',
            style: bluindarkFont.copyWith(fontSize: 26),
          ),
        ],
      ),
    );
  }
}
