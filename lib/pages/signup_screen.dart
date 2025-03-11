import 'dart:ui';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import '../widget/gradient_button.dart';
import '../widget/login_field.dart';



class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: const Color(0xFF080D20),
        body: Stack(children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/page/library_login.jpg',
              )),
          // Blurred container
          Center(
            child: BlurryContainer(
              blur: 2,
              width: 500,
              height: 600,
              elevation: 3,
              color: Colors.transparent,
              padding: const EdgeInsets.all(8),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.white70),
                ),
                child: Center(
                  child: Form(

                    child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 15),
                            const Text("Register",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cera Pro')),
                            const SizedBox(height: 15),
                            const LoginField(


                              hintText: 'First Name',
                              hide: false,
                              iconData: Icons.person,
                            ),
                            const SizedBox(height: 15),
                            const LoginField(


                              hintText: 'Last Name',
                              hide: false,
                              iconData: Icons.person,
                            ),
                            const SizedBox(height: 15),
                            const LoginField(


                              hintText: 'Mobile Number without +91',
                              hide: false,
                              iconData: Icons.mobile_friendly,
                            ),
                            const SizedBox(height: 15),
                            const LoginField(


                              hintText: 'CSE/CCE/ECE/ME',
                              hide: false,
                              iconData: Icons.settings_accessibility_sharp,
                            ),
                            const SizedBox(height: 15),
                            const LoginField(


                              hintText: 'Semester in Digit',
                              hide: false,
                              iconData: Icons.numbers,
                            ),
                            const SizedBox(height: 15),
                            const LoginField(


                              hintText: 'Age',
                              hide: false,
                              iconData: Icons.cake,
                            ),
                            const SizedBox(height: 15),
                            const LoginField(


                              hintText: 'Email',
                              hide: false,
                              iconData: Icons.email,
                            ),
                            const SizedBox(height: 15),
                            const LoginField(

                              hintText: 'Password',
                              hide: true,
                              iconData: Icons.lock,
                            ),
                            const SizedBox(height: 15),
                            const LoginField(


                              hintText: 'Confirm Password',
                              hide: false,
                              iconData: Icons.lock,
                            ),
                            const SizedBox(height: 15),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Check Privacy Policy Here',
                                  style: TextStyle(
                                      fontFamily: 'Cera Pro',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white),
                                )),
                            const SizedBox(height: 15),
                            GradientButton(
                              w: 395,
                              h: 45,
                              label: 'Signup',
                              onPressed: (){},
                            ),
                            const SizedBox(height: 15),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]));
  }
}
