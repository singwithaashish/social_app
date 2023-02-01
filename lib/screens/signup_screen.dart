import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:friend_maker/components/text_field.dart';
import 'package:friend_maker/screens/login_screen.dart';
import 'package:friend_maker/screens/welcome_screen.dart';
import 'package:page_transition/page_transition.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final TextEditingController tex = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: FaIcon(
            FontAwesomeIcons.angleLeft,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage('Assets/forest.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Column(
                children: [
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 5,
                    ),
                  ),
                  // * Username Text field
                  textField(tex, "Username", false, 30),
                  // * Email address text field
                  textField(tex, "Email", false, 30),
                  // * password text field
                  textField(tex, "Password", true, 30),
                  // * Confirm Password
                  textField(tex, "Confirm Password", true, 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: LoginScreen(),
                                  type: PageTransitionType.fade));
                        },
                        child: Text(
                          "Go to login",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Hero(
                        tag: "signup",
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                            minimumSize: Size(150, 40),
                            shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     PageTransition(
                            //         child: LoginScreen(), type: PageTransitionType.fade)
                            // MaterialPageRoute(
                            //   builder: (context) => ,
                            // ),
                          },
                          child: Text("sign up"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  SignInAlternatives()
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     IconButton(
                  //       onPressed: () {},
                  //       icon: FaIcon(
                  //         FontAwesomeIcons.google,
                  //         color: Colors.greenAccent,
                  //       ),
                  //     ),
                  //     IconButton(
                  //       onPressed: () {},
                  //       icon: FaIcon(
                  //         FontAwesomeIcons.facebook,
                  //         color: Colors.blueAccent,
                  //       ),
                  //     ),
                  //     IconButton(
                  //       onPressed: () {},
                  //       icon: FaIcon(
                  //         FontAwesomeIcons.twitter,
                  //         color: Colors.blue,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
