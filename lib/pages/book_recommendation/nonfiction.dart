import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:librarymanagementsystem/pages/book_recommendation/branch.dart';
import 'package:librarymanagementsystem/widget/colors.dart';
import 'package:rive/rive.dart';

import '../../widget/gradient_button.dart';

class NonFictionScreen extends StatefulWidget {
  const NonFictionScreen({Key? key}) : super(key: key);

  @override
  State<NonFictionScreen> createState() => _NonFictionScreenState();
}

class _NonFictionScreenState extends State<NonFictionScreen> {
  late RiveAnimationController _btnAnimationController;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation(
      "active",
      autoplay: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: const Color(0XFF0A0E21),
          scaffoldBackgroundColor: mobileBackgroundColor),
      home : Scaffold(
        body: Stack(
          children: [
            Positioned(
              width: screenWidth * 1.7,
              bottom: 200,
              left: 100,
              child: Image.asset("assets/backgrounds/Spline.png"),
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
              ),
            ),
            const RiveAnimation.asset("assets/RiveAssets/shapes.riv"),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: const SizedBox(),
              ),
            ),
            Center(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: ListView(
                    children: [
                      const SizedBox(height: 100),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(
                            child: Text(
                              "What do you like in Non-Fiction ?",
                              style: TextStyle(
                                fontSize: 60,
                                fontFamily: "Cera Pro",
                                height: 1.2,
                              ),
                            ),
                          ),
                          const SizedBox(height: 50),
                          Center(
                            child: Wrap(
                              alignment: WrapAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Auto/Biography', w: 200, h: 51, onPressed: () {

                                  },),
                                ),

                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'History', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Business', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Wellness', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Religion', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Travel', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Technology', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Memoir', w: 200, h: 51, onPressed: () { },),
                                ),

                              ],
                            ),
                          ),
                          const SizedBox(height: 100),
                          const Center(
                            child: Text(
                              'Designed & Developed By Software Development Team Y21',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, fontFamily: 'Cera Pro'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
