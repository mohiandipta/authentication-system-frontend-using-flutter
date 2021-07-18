import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_system/user.dart';
import 'styles/my_svg.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formKey = GlobalKey<FormState>();
  User user = User('', '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: SvgPicture.asset(
              top,
              width: 300,
              height: 250,
              color: Colors.purple[400],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 180,
                  ),
                  Text(
                    'Signin',
                    style: GoogleFonts.josefinSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),

                  // email TextFormFields
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 50),
                    child: TextFormField(
                      controller: TextEditingController(text: user.email),
                      onChanged: (value) {
                        user.email = value;
                      },

                      // email validation
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Entre something';
                        } else if (RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                          return null;
                        } else {
                          return 'Enter valid email';
                        }
                      },

                      decoration: InputDecoration(
                        hintText: '  Ente your email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.yellow)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.blue)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.blue)),
                      ),
                    ),
                  ),

                  // password TextFormFields
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: TextFormField(
                      controller: TextEditingController(text: user.password),
                      onChanged: (value) {
                        user.password = value;
                      },

                      //password valitation
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter something';
                        } else if (value.length >= 10 &&
                            !value.contains(RegExp(r'\W')) &&
                            RegExp(r'\d+\w*\d+').hasMatch(value)) {
                          return null;
                        } else {
                          return 'Enter valid password';
                        }
                      },

                      decoration: InputDecoration(
                        hintText: '  Ente your password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.yellow)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.blue)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.blue)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
