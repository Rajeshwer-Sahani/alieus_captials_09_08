import 'package:flutter/material.dart';

class login_view extends StatelessWidget {
  const login_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(
        255,
        0,
        0,
        0,
      ), // Set the background color here
      body: Center(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Image.asset('assets/loginpage/Ellipse_copy.png'),

                Image.asset('assets/loginpage/Ellipse_15_copy.png'),
                Positioned(
                  top: 197,
                  left: 19,
                  child: Image.asset('assets/loginpage/text_copy.png'),
                ),
                Positioned(
                  top: 92,
                  left: 185,
                  child: Image.asset('assets/loginpage/dolor_copy.png'),
                ),
                Positioned(
                  top: 181,
                  left: 213,
                  child: Image.asset('assets/loginpage/euro_copy.png'),
                ),
                Positioned(
                  top: 240,
                  left: 294,
                  child: Image.asset('assets/loginpage/yeman_copy.png'),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
