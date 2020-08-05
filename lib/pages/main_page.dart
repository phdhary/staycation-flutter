part of 'pages.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(height: 69),
            Landing(),
            SizedBox(height: 70),
            MostPicked(),
            SizedBox(height: 70),
            BeautyBackyard(),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
