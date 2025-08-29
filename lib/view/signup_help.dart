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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        title: Text("Sign Up Help",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 24, fontWeight: FontWeight.bold), ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0), // Set the background color here
      body: Center(
        child: Column(
              children: [
                Expanded(
                  child: Stack(
                        children: [
                          Image.asset("assets/loginpage/Ellipse_copy.png"),
                          Positioned (  top: 400,left: 95,
                        child: Text("Sign Up Help Screen",
                        style: TextStyle(color: Colors.white, fontSize: 24),),
                        ),
                        ],
                )
                )
              ],
        )
        
      ),
    );
  }
  
}
