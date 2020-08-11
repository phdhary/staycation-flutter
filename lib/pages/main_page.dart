part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                SizedBox(height: 110),
                LandingSection(),
                SizedBox(height: 70),
                MostPickedSection(),
                SizedBox(height: 70),
                ItemSection(
                  sectionTitle: 'Houses with beauty backyard',
                  getItems: () async => await fakeApi.getBeautyItems(),
                ),
                SizedBox(height: 70),
                ItemSection(
                  sectionTitle: 'Hotels with large living room',
                  getItems: () async => await fakeApi.getHotelItems(),
                ),
                SizedBox(height: 70),
                ItemSection(
                  sectionTitle: 'Apartments with kitchen set',
                  getItems: () async => await fakeApi.getApartItems(),
                ),
                SizedBox(height: 100),
                TestimonySection(
                  getItem: () async => await fakeApi.getTestimonyItem('Jony Sinuse'),
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
