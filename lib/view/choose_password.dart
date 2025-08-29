import 'package:flutter/material.dart';
import 'package:alieus_captials_09_08/main.dart';

void main(){
  runApp(MyApp());
}

class choose_password  extends StatelessWidget {
  const choose_password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        title: Text("Choose Password",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
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
                          Image.asset("assets/loginpage/Ellipse_15_copy.png"),

                          Positioned(top: 206, left: 60, width: 295,height: 274,
                            child: Image.asset("assets/choose_password/frame_copy.png"),      
                            ),
                          
                          Positioned (  top: 552,left: 60,
                        child: Text("Use this Email to sign to PHEONIXFX",
                        style: TextStyle(color: Colors.white, fontSize: 17),),
                        ),

                          Positioned( top: 672, left: 10, width: 384,height: 56,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 207, 170, 111),
                              ),
                              onPressed: (){
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => choose_password()),
                                // );
                              }, child: Text("Continue", 
                            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 22,
                            fontWeight: FontWeight.bold),)
                            )
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