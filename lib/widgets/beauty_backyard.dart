part of 'widgets.dart';

class BeautyBackyard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'House with beauty backyard',
              style: bluindarkFont.copyWith(fontSize: 24),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
