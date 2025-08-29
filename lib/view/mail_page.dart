  import 'package:alieus_captials_09_08/main.dart';
import 'package:alieus_captials_09_08/view/choose_password.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
    runApp(MyApp());
  }

class MailPage extends StatefulWidget {
  @override
  _MailPageState createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        title: Text('Enter Your Mail',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), 
        fontSize: 24, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.transparent, elevation: 0.0,
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  
                  Image.asset('assets/loginpage/Ellipse_copy.png'),
                  Image.asset('assets/loginpage/Ellipse_15_copy.png'),

                  Positioned( top: 237, left: 146, width: 159,height: 118,
                    child: Image.asset('assets/Email/icon_copy.png')
                  ),

                  Positioned( top: 206, left: 60, width: 295,height: 274,
                    child: Image.asset('assets/Email/frame_copy.png')
                  ),

                  Positioned( top: 552, left: 59, 
                    child: Text("Use this Email to sign to PHEONIXFX",
                    style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.normal,),
                    textAlign: TextAlign.center, )
                  ),

                  Positioned( top: 672, left: 10, width: 384,height: 56,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 207, 170, 111),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => choose_password()),
                        );
                      }, child: Text("Next", 
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 22, 
                    fontWeight: FontWeight.bold),),),
                  ),
                  
                ],
              ))
          ],
        )
      ),
    );
  }
}
  