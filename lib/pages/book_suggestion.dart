import 'package:flutter/material.dart';
import 'package:librarymanagementsystem/utils/appbar.dart';
import 'package:librarymanagementsystem/utils/footer.dart';
import '../widget/gradient_button.dart';

class SuggestionPage extends StatelessWidget {
  const SuggestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              appBar: CustomAppBar(),
              body:

              SingleChildScrollView(
                child: Column(
                  children: [

                    Stack(
                      children: [
                        Image.asset('assets/images/page/suggest.png'),
                        Column(
                          children: [
                            Container(
                              margin:
                              const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                              child: const Text(
                                "Have a book in mind that you'd love to see on our shelves? You're in the right place!",
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cera Pro'),
                              ),
                            ),
                            Container(
                              margin:
                              const EdgeInsets.symmetric(vertical: 20, horizontal: 30),

                              child: const Text(
                                'Take a moment to provide your insights in our form:',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cera Pro'),
                              ),
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            GradientButton(
                              onPressed: () {
                                print('Button 1 pressed');
                              },
                              label: 'Suggest',
                              w: 200,
                              h: 45,
                            ),

                            const SizedBox(
                              height: 30,
                            ),

                          ],
                        )
                      ],
                    ),

                   CustomFooter(),

                  ],
                ),
              ),



    );
  }
}
