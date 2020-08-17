part of 'widgets.dart';

class DetailPageDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String desc =
        "Minimal techno is a minimalist subgenre of techno music. It is characterized by a stripped-down aesthetic that exploits the use of repetition and understated development. Minimal techno is thought to have been originally developed in the early 1990s by Detroit-based producers Robert Hood and Daniel Bell.\n\nSuch trends saw the demise of the soul-infused techno that typified the original Detroit sound. Robert Hood has noted that he and Daniel Bell both realized something was missing from techno in the post-rave era.\n\nDesign is a plan or specification for the construction of an object or system or for the implementation of an activity or process, or the result of that plan or specification in the form of a prototype, product or process. The national agency for design: enabling Singapore to use design for economic growth and to make lives better.";
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150),
      child: Row(
        children: [
          Container(
            width: 608,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About the place',
                  style: blackFont.copyWith(fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  desc,
                  style: grayFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 30),
                DetailPageFeatures(),
              ],
            ),
          ),
          SizedBox(width: 54),
          Container(
            width: 550,
            padding: EdgeInsets.symmetric(horizontal: 84, vertical: 62),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color(0xffe5e5e5),
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Start Booking',
                  style: blackFont.copyWith(fontSize: 20),
                ),
                SizedBox(height: 14),
                Row(
                  children: [
                    Text(
                      "280",
                      style: greenFont.copyWith(fontSize: 36),
                    ),
                    Text(
                      " per night",
                      style: grayFont.copyWith(
                        fontSize: 36,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14),
                Text(
                  'How long will you stay?',
                  style: bluindarkFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: gray2nd,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Center(
                          child: SizedBox(
                            height: 45,
                            width: 45,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              color: red,
                              onPressed: () {},
                              child: Text(
                                '-',
                                style: whiteFont.copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '2 nights',
                        style: blackFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        child: Center(
                          child: SizedBox(
                            height: 45,
                            width: 45,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              color: green,
                              onPressed: () {},
                              child: Text(
                                '+',
                                style: whiteFont.copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  'Pick a Date',
                  style: blackFont.copyWith(fontSize: 20),
                ),
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: gray2nd,
                  ),
                  child: Container(
                    height: 45,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          child: SizedBox(
                            height: 45,
                            width: 45,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              color: blueIndigoDark,
                              child: Image.asset('assets/images/ic_calendar.png'),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '20 Jan - 22 Jan',
                            style: blackFont.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Row(
                  children: [
                    Text(
                      'You will pay ',
                      style: grayFont.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      '480 USD ',
                      style: blackFont.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'per ',
                      style: grayFont.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      '2 nights ',
                      style: blackFont.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Center(
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                      color: blueIndigo,
                      shape:
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        'Continue To Book',
                        style: whiteFont.copyWith(fontSize: 18),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
