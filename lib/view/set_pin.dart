import 'package:alieus_captials_09_08/main.dart';
import 'package:flutter/material.dart';

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
                  ],
                )
                 )
            ],
          ),
        ),
        
        );
      }
}