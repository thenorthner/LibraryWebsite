import 'package:flutter/material.dart';
import 'package:librarymanagementsystem/pages/book_recommendation/acad_or_non.dart';
import 'package:librarymanagementsystem/pages/dicover_learn.dart';
import 'package:librarymanagementsystem/pages/events.dart';
import 'package:librarymanagementsystem/pages/feedback.dart';
import '../pages/book_suggestion.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image.asset(
          'assets/images/utility/black_gradient.jpg',
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 30, horizontal: 50),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(builder: (context) =>new DiscoverPage()));
                          },
                          child: const Text(
                            "Discover & Learn",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(builder: (context) =>new AcadornonScreen()));
                          },
                          child: const Text(
                            "Recommendations",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(builder: (context) =>new EventPage()));
                          },
                          child: const Text(
                            "Events",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(builder: (context) =>new FeedbackPage()));
                          },
                          child: const Text(
                            "Feedback & Contact",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Subscribe to News Letter",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),

                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 30, horizontal: 50),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Lost & Found",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(builder: (context) =>new SuggestionPage()));
                          },
                          child: const Text(
                            "Suggest a Book",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Featured Collection",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Recommended Reads",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Digital Resources",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 30, horizontal: 50),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {

                          },
                          child: const Text(
                            "Rules & Regulations",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Privacy Policy",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Fine Policy",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Event Rules",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Support & FAQ",
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    '© 2023 LNMIIT Cental Library. All rights reserved.',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cera Pro',
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            'assets/svg/insta.png',
                            width: 50,
                            height: 50,
                          )),
                      const SizedBox(width: 16),
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            'assets/svg/youtube.png',
                            width: 50,
                            height: 50,
                          )),
                      const SizedBox(width: 16),
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            'assets/svg/facebook.png',
                            width: 50,
                            height: 50,
                          )),
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
