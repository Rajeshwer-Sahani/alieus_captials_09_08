import 'package:alieus_captials_09_08/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class SelectCountry extends StatelessWidget {
  const SelectCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0), // Set the background color here 
          appBar: AppBar(
            title: Text("Select Country", 
            style: TextStyle(color: const Color.fromARGB(255, 3, 3, 3)),
            
            ),
          ),
          body: Center(
            child: 
              Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [                        
                        Image.asset('assets/loginpage/Ellipse_copy.png'),
                       //Image.asset('assets/loginpage/Ellipse_copy.png'),
                      ],
                    ) 
                  )
                ],
              )
      ),
      
    );
  }
  
}