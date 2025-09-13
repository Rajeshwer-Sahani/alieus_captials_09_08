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

                  Positioned( top: 552, left: 52, 
                    child: Text("Use this Email to sign to PHEONIXFX",
                    style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.normal,),
                    textAlign: TextAlign.center, )
                  ),

                  Positioned( top: 672, left: 10, width: 384,height: 56,
                    child: ElevatedButton( 
                      style: 
                            ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,    //zaroori hai bcz By default ElevatedButton apne andar thoda extra padding add karta hai.Agar hum gradient ka Ink/Container use karte hain aur padding ko remove nahi karte, toh gradient poore button ko cover nahi karega (chhoti si white/transparent gap reh jaayegi).
                        backgroundColor: Colors.transparent,   // remove solid background
                        shape: RoundedRectangleBorder( // same radius for gradient
                          borderRadius: BorderRadiusGeometry.only(
                            bottomLeft: Radius.circular(30),
                            topRight: Radius.circular(30))
                        )
                      ),

                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => choose_password()),
                        );
                      }, 
                      
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors:[
                            Color(0xFFF3C96B),
                            Color(0xFFD4A545),
                          ] ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            topRight: Radius.circular(30))
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("Continue", 
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18, 
                    fontWeight: FontWeight.bold),
                    ),
                        ),
                      ),
                      
                    ),
                  ),
                  
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 365,right: 10,left: 10),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      style: TextStyle(color: Colors.white),

                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 48, 48, 48),
                        hintText: ("Enter Your Email"),
                        hintStyle: TextStyle(color: const Color.fromARGB(232, 255, 255, 255)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(Icons.email, color: Colors.white,
                        size: 20,)
                      )
                    ),
                  )

                ],
              ))
          ],
        )
      ),
    );
  }
}
  