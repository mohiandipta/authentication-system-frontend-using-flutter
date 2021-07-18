import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'styles/my_svg.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: SvgPicture.asset(
              top,
              width: 500,
              height: 150,
              color: Colors.lightGreen,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
          )
        ],
      ),
    );
  }
}
