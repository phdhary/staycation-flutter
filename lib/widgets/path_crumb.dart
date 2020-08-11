part of 'widgets.dart';

class PathCrumb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150),
      child: Row(
        children: [
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Home   /',
                style: grayFont.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                '   House Details',
                style: blackFont.copyWith(fontSize: 18),
              )
            ],
          )),
          Container(),
        ],
      ),
    );
  }
}
