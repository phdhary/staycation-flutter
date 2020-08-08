part of 'pages.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FakeApi fakeApi = FakeApi();

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
                  getItems: () async {
                    return await fakeApi.getBeautyItems();
                  },
                ),
                SizedBox(height: 70),
                ItemSection(
                  sectionTitle: 'Hotels with large living room',
                  getItems: () async {
                    return await fakeApi.getHotelItems();
                  },
                ),
                SizedBox(height: 70),
                ItemSection(
                  sectionTitle: 'Apartments with kitchen set',
                  getItems: () async {
                    return await fakeApi.getApartItems();
                  },
                ),
                SizedBox(height: 100),
                TestimonySection(),
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
