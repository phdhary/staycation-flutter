part of 'widgets.dart';

class TestimonySection extends StatefulWidget {
  final int rating;
  final Future<Testimony> Function() getItem;

  const TestimonySection({
    Key key,
    @required this.getItem,
    this.rating = 0,
  }) : super(key: key);

  @override
  _TestimonySectionState createState() => _TestimonySectionState();
}

class _TestimonySectionState extends State<TestimonySection> {
  Testimony item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150),
      child: FutureBuilder(
        future: loadData(),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Row(
              children: [
                Container(
                  height: 541,
                  width: 405,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 366,
                          height: 502,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffe5e5e5),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(100),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 366,
                          height: 502,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(100),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(item.image),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: blackFont.copyWith(fontSize: 24),
                      ),
                      SizedBox(height: 40),
                      Container(
                        height: 50,
                        width: 300,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.rating,
                          itemBuilder: (_, index) => Container(
                            child: Icon(
                              Icons.star,
                              color: Color(0xffffcc47),
                              size: 36,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        item.subtitle,
                        style: blackFont.copyWith(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        item.reviewer,
                        style: grayFont.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 50),
                      Container(
                        width: 210,
                        height: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                        child: RaisedButton(
                          color: blueIndigo,
                          child: Text(
                            'Read Their Story',
                            style: whiteFont.copyWith(fontSize: 18),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  loadData() async {
    item = await widget.getItem();
  }
}
