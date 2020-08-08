part of 'widgets.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150, vertical: 50),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1,
            color: Color(0xffe5e5e5),
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Logo(),
                    SizedBox(height: 8),
                    Text(
                      'We kaboom your beauty holiday\ninstantly and memorable.',
                      style: grayFont.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 132),
              FooterSectionItem(
                sectionTitle: 'For Beginners',
                item1: 'New Account',
                item2: 'Start Booking a Room',
                item3: 'User Payments',
              ),
              SizedBox(width: 70),
              FooterSectionItem(
                sectionTitle: 'Explore Us',
                item1: 'Our Careers',
                item2: 'Privacy',
                item3: 'Term & Conditions',
              ),
              SizedBox(width: 70),
              FooterSectionItem(
                sectionTitle: 'Connect Us',
                item1: 'support@staycation.id',
                item2: '0542-751-6316',
                item3: 'Staycation, Madesan, Indonesia',
              ),
            ],
          ),
          SizedBox(height: 50),
          Center(
            child: Text(
              'Copyright 2021 • All rights reserved • Staycation',
              style: grayFont.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          )
        ],
      ),
    );
  }
}
