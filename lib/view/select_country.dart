import 'package:alieus_captials_09_08/main.dart';
import 'package:alieus_captials_09_08/view/checkbox_test.dart';
import 'package:alieus_captials_09_08/view/mail_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

void main() {
  runApp(MyApp());
}

class SelectCountry extends StatefulWidget {
  const SelectCountry({super.key});

  @override
  State<SelectCountry> createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  bool isChecked = false; // Track checkbox state

  bool agree = false;
  void dosomething() {
    setState(() {
      agree = !agree;
    });
  }

  Country country = CountryParser.parseCountryCode("IN");
  final Border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.transparent),
  );

  void showPicker() {
    showCountryPicker(
      favorite: ['IN', 'US', 'AE', 'GB'],
      countryListTheme: CountryListThemeData(
        backgroundColor: Color.fromARGB(255, 48, 48, 48),
        textStyle: TextStyle(color: Colors.white),
        bottomSheetHeight: 600,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        inputDecoration: InputDecoration(
          labelText: 'Search country',
          labelStyle: TextStyle(color: Colors.white),
          hintText: 'Type here to search',
          hintStyle: TextStyle(color: Colors.white54),
          prefixIcon: Icon(Icons.search, color: Colors.white),
          focusedBorder: Border,
          enabledBorder: Border,
          border: Border,
          fillColor: Color.fromARGB(255, 48, 48, 48),
          filled: true,
        ),
      ),

      context: context,
      onSelect: (country) {
        setState(() {
          this.country = country;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        title: Text(
          "Select Country",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
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
                children: [
                  Image.asset('assets/loginpage/Ellipse_copy.png'),

                  Container(
                    padding: EdgeInsets.only(
                      top: 14,
                      left: 10,
                      bottom: 500,
                      right: 10,
                    ),
                    alignment: Alignment.center,
                    child: TextFormField(
                      onFieldSubmitted: (phonenumber) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              " +${country.phoneCode} $phonenumber",
                              
                            ),
                          ),
                        );
                      },
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 48, 48, 48),
                        hintText: 'Enter Your Phone Number',
                        hintStyle: TextStyle(
                          color: const Color.fromARGB(232, 255, 255, 255),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: showPicker,
                          child: Container(
                            width: 70,
                            height: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "${country.flagEmoji} +${country.phoneCode}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 277,
                    left: 57,
                    width: 302,
                    height: 306,
                    child: Image.asset(
                      'assets/country_dropdown/world_copy.png',
                    ),
                  ),

                  Positioned(
                    top: 303,
                    left: 53,
                    width: 295,
                    height: 274,
                    child: Image.asset(
                      'assets/country_dropdown/Frame_copy.png',
                    ),
                  ),
                    
                    Padding(padding: EdgeInsets.only(top: 650,left: 10,right: 10),
                    
                // Continue Button (disabled until agree)
            // ElevatedButton(
            //   onPressed: isChecked
            //       ? () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (context) => MailPage()),
            //           );
            //         }
            //       : null,
            //   style: ElevatedButton.styleFrom(
            //     minimumSize: Size(double.infinity, 56), 
            //     backgroundColor: isChecked ? Colors.amber : Colors.grey,
                
            //   ),
            //   child: Text(
            //     "Continue",
            //     style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 18,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),

           child:  Column(
              children: [
                 if(isChecked)...{

                          // Gradient Continue Button
                      GestureDetector(
                        onTap: isChecked
                            ? () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MailPage()),
                                );
                              }
                            : null,
                            
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFF3C96B),
                                Color(0xFFD4A545),
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              
                            ),
                          ),
                        ),
                      ),
                      },
              ],
            )
            ),
          

              SizedBox(height: 5,),

                  Positioned(
                    left: 10,
                    right: 10,
                    bottom: 230,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                           IconButton(
                  icon: Icon(
                    isChecked
                        ? Icons.check_box
                        : Icons.check_box_outline_blank,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                    "I declare and confirm that I am not a citizen or "
                    "resident of the US for tax purpose.",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
                      ],
                    ),
                  ),


                  Positioned(
                    left: 10,
                    right: 10,
                    bottom: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 10,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          "Based on the selected country of residence, you are registering with PHEONIXFX, regulated by the Seychelles FSA\n\n",
                                    ),
                                    TextSpan(
                                      text:
                                          "By clicking Continue you confirm that you have read, understood, and agree with all the information in the ",
                                    ),
                                   TextSpan(
                                      text: "Client Agreement",
                                      style: TextStyle(
                                        color: Colors.orangeAccent,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => WebPage(
                                                title: "Client Agreement",
                                              ),
                                            ),
                                          );
                                        },
                                    ),
                                    TextSpan(
                                      text:
                                          " and the service terms and conditions for your country listed in the following documents: ",
                                    ),
                                    TextSpan(
                                      text: "General Business Terms",
                                      style: TextStyle(
                                        color: Colors.orangeAccent,
                                      ),
                                      recognizer: TapGestureRecognizer() 
                                      ..onTap = () {
                                        Navigator.push(
                                          context, 
                                          MaterialPageRoute(
                                            builder: (context)=>WebPage(
                                              title: "General Business Terms"
                                            )
                                          ),
                                        );
                                      }
                                    ),
                                    TextSpan(text: " and "),
                                    TextSpan(
                                      text: "Partnership Agreement.",
                                      style: TextStyle(
                                        color: Colors.orangeAccent,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => WebPage(
                                                title: "Partnership Agreement",
                                              ),
                                            ),
                                          );
                                        },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
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


// // Dummy Next Page
// class NextPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Next Page")),
//       body: Center(child: Text("Welcome to the next page!"),
      
//       ),
//     );
//   }
// }

// Dummy WebPage (replace with WebView if needed)
class WebPage extends StatelessWidget {
  final String title;
  WebPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: Text(title,style: TextStyle( color: Color.fromARGB(255, 255, 255, 255),),),
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
                 child: Center(
                 child: Text("This is the $title page",
                 style: TextStyle(color: Colors.white),
                 ),
                  ),
                )
            ],
        ),
      
      
    );
  }
}
