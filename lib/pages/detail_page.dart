part of 'pages.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  FakeApi fakeApi = FakeApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 132),
                Container(
                  height: 84,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: PathCrumb(),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: DetailPageTitle(
                            title: 'Village CJ', subtitle: 'Balikpapan, Indonesia'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                DetailPagePictures(),
                SizedBox(height: 50),
                DetailPageDescription(),
                SizedBox(height: 70),
                ItemSection(
                  sectionTitle: 'Treasure to Choose',
                  getItems: () async => await fakeApi.getTreasureItems(),
                ),
                SizedBox(height: 100),
                TestimonySection(
                  rating: 5,
                  getItem: () async => await fakeApi.getTestimonyItem('Jennesa Soklo'),
                ),
                SizedBox(height: 100),
                FooterSection(),
              ],
            ),
          ),
          HeaderSection(),
        ],
      ),
    );
  }
}
