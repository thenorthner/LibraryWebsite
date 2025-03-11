import 'package:flutter/material.dart';
import 'package:librarymanagementsystem/pages/book_suggestion.dart';
import 'package:librarymanagementsystem/pages/dicover_learn.dart';
import 'package:librarymanagementsystem/pages/feedback.dart';
import 'package:librarymanagementsystem/pages/home_screen.dart';
import 'package:librarymanagementsystem/pages/login_screen.dart';


import '../pages/book_recommendation/acad_or_non.dart';
import '../pages/events.dart';
import '../widget/gradient_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        appBar : AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, new MaterialPageRoute(builder: (context) =>new HomeScreen()));
                      },
                      child: Image.asset(
                        'assets/images/utility/LNMIIT Global Library.png',
                        width: 100,
                        height: 60,
                      ),
                    )),

                TextButton(
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(builder: (context) =>new DiscoverPage()));

                    },
                    child: const Text(
                      "Discover & Learn",
                      style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(builder: (context) =>new AcadornonScreen()));
                    },
                    child: const Text(
                      "Recommendations",
                      style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(builder: (context) =>new FeedbackPage()));
                    },
                    child: const Text(
                      "Feedback & Contact",
                      style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(builder: (context) =>new EventPage()));
                    },
                    child: const Text(
                      "Events",
                      style: TextStyle(
                        fontFamily: 'Cera Pro',   fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(builder: (context) =>new SuggestionPage()));
                    },
                    child: const Text(
                      "Suggest a Book",
                      style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )),

                GradientButton(w: 100, h: 50, label: 'Login',onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) =>new LoginPage()));
                },),
              ],
            ),

        ),
      ),
    );
  }


  @override
  Size get preferredSize => const Size.fromHeight(60);
}
