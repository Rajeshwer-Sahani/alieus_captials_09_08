import 'package:alieus_captials_09_08/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';




void main(){
  runApp(MyApp());
}

class set_pin extends StatefulWidget{
  const set_pin({super.key});

  @override
  State<set_pin> createState() => _set_pinState();
}

class _set_pinState extends State<set_pin> {

   String correctPin = "1234"; // You can store it securely
  String enteredPin = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 0, 0, 0), // Set the background color here
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        title: Text("Set PIN",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 24, fontWeight: FontWeight.bold), ),
        backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Image.asset("assets/set_pin/ellipse_copy.png"), 

                    Positioned(top: 234,left: 105,
                      child: Text("Enter your login passcode",style: TextStyle(color: Colors.white,fontSize: 17),
                      ) 
                      ),


                    Positioned(
                      child: PinCodeTextField(appContext: context, length: 4,
                      obscureText: true,
                       onChanged: (value) {
                       enteredPin = value;
                        },
                         onCompleted: (value) {
              if (value == correctPin) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Login Successful ✅")),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Invalid PIN ❌")),
                );
              }
            },
                      )
                      )
                      
                  ],
                )
                 )    
            ],
          ),
        ),
        
        );
      }
}