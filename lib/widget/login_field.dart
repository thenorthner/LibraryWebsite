import 'package:flutter/material.dart';

import 'package:librarymanagementsystem/widget/pallete.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  final bool hide;
  final IconData iconData;

   const LoginField(
      {super.key,
      required this.hintText,
      required this.hide,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 395,
        maxHeight: 60,
      ),
      child: TextFormField(

        obscureText: hide,

        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Pallete.whiteColor, width: 3),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Pallete.gradient2, width: 3),
              borderRadius: BorderRadius.circular(10)),
          hintText: hintText,
          labelText: hintText,
          suffixIcon: iconData != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    iconData,
                    color: Colors.white,
                  ),
                )
              : null,
        ),

        cursorColor: Pallete.gradient1,
      ),
    );
  }
}
