part of 'widgets.dart';

class BeautyBackyard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Item> items = [
      Item(
        title: 'Tabby Town',
        subtitle: 'Gunung Batu, Indonesia',
        isPopular: true,
      ),
      Item(
        title: 'Anggana',
        subtitle: 'Bogor, Indonesia',
        isPopular: true,
      ),
      Item(
        title: 'Seattle Rain',
        subtitle: 'Jakarta, Indonesia',
        isPopular: true,
      ),
      Item(
        title: 'Wooden Pit',
        subtitle: 'Wonosobo, Indonesia',
        isPopular: true,
      ),
    ];
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
              children: items
                  .asMap()
                  .entries
                  .map(
                    (e) => Container(
                      margin: EdgeInsets.only(left: (e.key != 0) ? 30 : 0),
                      child: ItemBox(
                        image: 'assets/images/bb_${e.key + 1}.png',
                        isPopular: e.value.isPopular,
                        title: e.value.title,
                        subtitle: e.value.subtitle,
                      ),
                    ),
                  )
                  .toList())
        ],
      ),
    );
  }
}
