import 'package:alieus_captials_09_08/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';




void main(){
  runApp(MyApp());
}

class set_pin extends StatelessWidget{
  const set_pin({super.key});
  
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
                      child: Text("Enter your login passcode",style: TextStyle(color: Colors.white,fontSize: 17),) )

                      
                  ],
                )
                 )    
            ],
          ),
        ),
        
        );
      }
}