import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:librarymanagementsystem/pages/book_recommendation/branch.dart';
import 'package:librarymanagementsystem/widget/colors.dart';
import 'package:rive/rive.dart';

import '../../widget/gradient_button.dart';

class SelfimprovemnetScreen extends StatefulWidget {
  const SelfimprovemnetScreen({Key? key}) : super(key: key);

  @override
  State<SelfimprovemnetScreen> createState() => _SelfimprovemnetScreenState();
}

class _SelfimprovemnetScreenState extends State<SelfimprovemnetScreen> {
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
                              "Let us choose what's best for you!",
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
                                  child: GradientButton(label: 'Personal development', w: 200, h: 51, onPressed: () {

                                  },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Productivity', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Leadership', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Investing', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Habit formation', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Communication', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Relationships', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Career', w: 200, h: 51, onPressed: () { },),
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
