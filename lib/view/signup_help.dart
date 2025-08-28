import 'package:alieus_captials_09_08/main.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class SignupHelp extends StatelessWidget {
  const SignupHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0), // Set the background color here
      body: Center(
        child: 
        Text("Sign Up Help Screen", style: TextStyle(color: Colors.white, fontSize: 24),)
      ),
    );
  }
  
}
