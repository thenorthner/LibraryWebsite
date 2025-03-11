import 'dart:ui';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:librarymanagementsystem/pages/signup_screen.dart';
import '../widget/gradient_button.dart';
import '../widget/login_field.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late FocusNode _userNameFocus;
  late FocusNode _passwordFocus;
  late FocusNode _loginFocus;
  final TextEditingController _controllerUserName = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String _errorMessage = '';

  @override
  void initState() {
    _userNameFocus = FocusNode();
    _passwordFocus = FocusNode();
    _loginFocus = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _userNameFocus.dispose();
    _passwordFocus.dispose();
    _loginFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appMediaQ = MediaQuery.of(context).size;
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
              height: 500,
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
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("LNMIIT Central Library",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cera Pro')),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Sign in",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cera Pro')),
                        const SizedBox(height: 15),
                       LoginField(

                          hintText: 'Email',
                          hide: false,
                          iconData: Icons.person,
                        ),
                        const SizedBox(height: 15),
                         LoginField(

                          hintText: 'Password',
                          hide: true,
                          iconData: Icons.lock,
                        ),
                        const SizedBox(height: 15),
                        TextButton(
                          onPressed: () {
                            print('1');
                          },
                          child: const Text('Forgot Password?',
                              style: TextStyle(
                                  fontFamily: 'Cera Pro',
                                  fontSize: 17,
                                  color: Colors.white)),
                        ),
                        const SizedBox(height: 15),
                        GradientButton(
                          onPressed: (){},
                          label: 'Sign in',
                          w: 395,
                          h: 45,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                          },
                          child: const Text("Create Account",
                              style: TextStyle(
                                  fontFamily: 'Cera Pro',
                                  fontSize: 17,
                                  color: Colors.white)),
                        )
                      ]),
                ),
              ),
            ),
          ),
        ]));
  }

}
