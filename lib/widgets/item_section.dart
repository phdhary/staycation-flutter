part of 'widgets.dart';

class ItemSection extends StatefulWidget {
  final String sectionTitle;
  final Future<List<Item>> Function() getItems;
  ItemSection({
    Key key,
    this.sectionTitle = '',
    this.getItems,
  }) : super(key: key);

  @override
  _ItemSectionState createState() => _ItemSectionState();
}

class _ItemSectionState extends State<ItemSection> {
  List<Item> items = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              widget.sectionTitle,
              style: bluindarkFont.copyWith(fontSize: 24),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 305,
            child: FutureBuilder(
              future: loadData(),
              builder: (_, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: EdgeInsets.only(left: (index != 0) ? 30 : 0),
                        child: ItemBox(
                          title: items[index].title,
                          subtitle: items[index].subtitle,
                          isPopular: items[index].isPopular,
                          image: items[index].image,
                        ),
                      );
                    },
                  );
                } else {
                  return Text('no data');
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  loadData() async {
    items = await widget.getItems();
  }
}
