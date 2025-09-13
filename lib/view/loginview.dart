import 'package:alieus_captials_09_08/view/checkbox_test.dart';
import 'package:alieus_captials_09_08/view/select_country.dart';
import 'package:alieus_captials_09_08/view/sign_up_.dart';
import 'package:alieus_captials_09_08/view/signup_help.dart';
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
            Expanded(
              child: Stack(
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
                  Positioned(
                    top: 353,
                    left: 74,
                    child: Image.asset('assets/loginpage/trade_copy.png'),
                  ),

                  Positioned(
                    bottom: 150,
                    left: 10,
                    width: 380,
                    height: 56,
                    
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,     //zaroori hai bcz By default ElevatedButton apne andar thoda extra padding add karta hai.Agar hum gradient ka Ink/Container use karte hain aur padding ko remove nahi karte, toh gradient poore button ko cover nahi karega (chhoti si white/transparent gap reh jaayegi).
                        backgroundColor: Colors.transparent,  // remove solid background
                        foregroundColor: Color.fromARGB(255, 0, 0, 0),
                        
                        // same radius for gradient
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30))
                        ),
                      ),
                      onPressed: () {
                        // Navigate to another screen
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SelectCountry()));
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors:[
                                Color(0xFFF3C96B),
                                Color(0xFFD4A545),
                            ]
                             ),
                             borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30))
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("login",
                      style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold,
                          //color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        ),
                      )
                    ),
                  ),

                  
                  Positioned( bottom: 87, left: 10, width: 380, height: 50,
                    child: TextButton( style:  
                    TextButton.styleFrom(
                      foregroundColor: Color.fromARGB(255, 255, 255, 255),
                      textStyle: TextStyle(
                        fontSize: 18,
                        //color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                      onPressed: () {
                    Navigator.push( context, MaterialPageRoute(builder: (context) => sign_up()));
                  }, 
                  child: Text("Sing Up"))
                  ),


                  Positioned( bottom: 40, left:70,
                    child: TextButton( style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 14
                        //color: Color.fromARGB(255, 255, 255, 255),
                      )
                    ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => SignupHelp()));
                      }, 
                      child: Text("Unable to Login and Sign up? Get help")),
                      ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
