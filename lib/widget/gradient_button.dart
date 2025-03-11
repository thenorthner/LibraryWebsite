

import 'package:flutter/material.dart';
import 'package:librarymanagementsystem/widget/pallete.dart';
class GradientButton extends StatelessWidget {
  final String label;
  final double w;
  final double h;
  final VoidCallback onPressed;

  const GradientButton({Key? key, required this.w, required this.h, required this.label, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width : w,
      height: h,
      decoration: BoxDecoration(
         borderRadius:  BorderRadius.circular(7),
         gradient: const LinearGradient(colors:
         [
           Pallete.gradient1,
           Pallete.gradient2,
           Pallete.gradient3,
         ],
           begin: Alignment.topRight,
           end: Alignment.bottomLeft,
         )
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(label,style: const TextStyle(fontSize: 17, fontFamily: 'Cera Pro', color: Colors.white)),

      ),
    );
  }
}
