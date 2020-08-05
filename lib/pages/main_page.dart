part of 'pages.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          SizedBox(height: 69),
          Landing(),
        ],
      ),
    );
  }
}
