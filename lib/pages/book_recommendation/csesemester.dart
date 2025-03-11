import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../widget/colors.dart';
import '../../widget/gradient_button.dart';

class CseSemesterScreen extends StatefulWidget {
  const CseSemesterScreen({Key? key}) : super(key: key);

  @override
  State<CseSemesterScreen> createState() => _CseSemesterScreenState();
}

class _CseSemesterScreenState extends State<CseSemesterScreen> {
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
      home: Scaffold(
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
                              "Choose Your Semester",
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
                                  child: GradientButton(label: 'Semester 1', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Semester 2', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Semester 3', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Semester 4', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Semester 5', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Semester 6', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Semester 7', w: 200, h: 51, onPressed: () { },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Semester 8', w: 200, h: 51, onPressed: () { },),
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
