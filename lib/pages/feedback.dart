import 'package:flutter/material.dart';
import 'package:librarymanagementsystem/utils/appbar.dart';
import 'package:librarymanagementsystem/utils/footer.dart';
import '../widget/gradient_button.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: Colors.white,
            ),
            home: Scaffold(
              appBar: CustomAppBar(),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/page/feel.png'),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 30),
                              width: 600,
                              child: const Text(
                                'Have any Questions or Want to Share your Feedback ?',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cera Pro'),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 30),
                              width: 600,
                              child: const Text(
                                'Take a moment to provide your insights in our form below : ',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cera Pro'),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GradientButton(
                              onPressed: () {
                                print('Button 1 pressed');
                              },
                              label: 'We Hear you',
                              w: 150,
                              h: 45,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Column(
                              children: [
                                Text(
                                  "Contact Us",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cera Pro'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Email : lnmiitcentrallibrary@gmail.com",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cera Pro'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Telephone :  0141-2688093 & 0141-2688090",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cera Pro'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  child: Text(
                                    " Post : LNMIIT, Rupa ki Nangal, Post-Sumel, Jamdoli,  Jaipur-302031, Raj. India",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Cera Pro'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    CustomFooter(),
                  ],
                ),
              ),
            )));
  }
}
