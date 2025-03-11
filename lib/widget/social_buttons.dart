import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:librarymanagementsystem/widget/pallete.dart';

class SocialButton extends StatelessWidget {
  final String iconpath;
  final String label;
  final double horizontalpadding;

  const SocialButton({Key? key, required this.iconpath, required this.label, this.horizontalpadding=100})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(iconpath, width: 25, color: Pallete.whiteColor,),
      label: Text(label, style: const TextStyle(
          color: Pallete.whiteColor, fontSize: 18, fontFamily: 'Cera Pro'),)
      , style: TextButton.styleFrom(
        padding:  EdgeInsets.symmetric(vertical: 30,horizontal: horizontalpadding),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color:Pallete.whiteColor,
            width: 3,

          ),

          borderRadius:BorderRadius.circular(10),
        )


    ),

    );
  }
}
