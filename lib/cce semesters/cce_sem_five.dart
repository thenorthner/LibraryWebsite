import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../widget/gradient_button.dart';

class CceSemester5Screen extends StatefulWidget {
  const CceSemester5Screen({Key? key}) : super(key: key);

  @override
  State<CceSemester5Screen> createState() => _CceSemester5ScreenState();
}

class _CceSemester5ScreenState extends State<CceSemester5Screen> {
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

    return Scaffold(
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
                            "Choose Your Branch",
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
                                child: GradientButton(label: 'PTS', w: 200, h: 51, onPressed: () { },),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                child: GradientButton(label: 'Data Science', w: 200, h: 51, onPressed: () { },),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                child: GradientButton(label: 'DSP', w: 200, h: 51, onPressed: () { },),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                child: GradientButton(label: 'DC', w: 200, h: 51, onPressed: () { },),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                child: GradientButton(label: 'A.I.', w: 200, h: 51, onPressed: () { },),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                child: GradientButton(label: 'S.W.E.', w: 200, h: 51, onPressed: () { },),
                              ),

                            ],
                          ),
                        ),
                        const SizedBox(height: 100),
                        const Center(
                          child: Text(
                            'Designed & Developed By Kshitij Sharma',
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
    );
  }



}