import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:librarymanagementsystem/pages/book_recommendation/branch.dart';
import 'package:librarymanagementsystem/pages/book_recommendation/fiction.dart';
import 'package:librarymanagementsystem/pages/book_recommendation/self_improvement.dart';
import 'package:librarymanagementsystem/widget/colors.dart';
import 'package:rive/rive.dart';

import '../../widget/gradient_button.dart';
import 'nonfiction.dart';

class AcadornonScreen extends StatefulWidget {
  const AcadornonScreen({Key? key}) : super(key: key);

  @override
  State<AcadornonScreen> createState() => _AcadornonScreenState();
}

class _AcadornonScreenState extends State<AcadornonScreen> {
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
                                  child: GradientButton(label: 'Academics', w: 200, h: 51, onPressed: () {
                                    Navigator.push(context, new MaterialPageRoute(builder: (context) =>new BranchScreen()));
                                  },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Fiction', w: 200, h: 51, onPressed: () {
                                    Navigator.push(context, new MaterialPageRoute(builder: (context) =>new FictionScreen()));
                                  },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Non Fiction', w: 200, h: 51, onPressed: () {
                                    Navigator.push(context, new MaterialPageRoute(builder: (context) =>new NonFictionScreen()));
                                  },),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  child: GradientButton(label: 'Self-Improvement', w: 200, h: 51, onPressed: () {
                                    Navigator.push(context, new MaterialPageRoute(builder: (context) =>new SelfimprovemnetScreen()));
                                  },),
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
