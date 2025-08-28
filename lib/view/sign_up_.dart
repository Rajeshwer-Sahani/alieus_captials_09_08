import 'package:alieus_captials_09_08/main.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class sign_up extends StatelessWidget {
  const sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0), // Set the background color here
      body: Center(
        child: 
              Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                       Image.asset('assets/loginpage/Ellipse_copy.png'),

                      ],
                    ) 
                  )
                ],
              )
      ),
    );
  }
  
}