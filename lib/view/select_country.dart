import 'package:alieus_captials_09_08/main.dart';
import 'package:alieus_captials_09_08/view/mail_page.dart';
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
  bool agree = false;
  void dosomething() {
    setState(() {
      agree = !agree;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        title: Text("Select Country",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), 
        fontSize: 24, fontWeight: FontWeight.bold), ),
        backgroundColor: Colors.transparent, elevation: 0.0,
      ),
      backgroundColor: Color.fromARGB( 255, 0, 0, 0), // Set the background color here
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset('assets/loginpage/Ellipse_copy.png'),

                  Positioned(
                    top: 200,
                    left: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                      onPressed: () {
                        showCountryPicker(
                          context: context,
                          showPhoneCode:
                              true, // optional. Shows phone code before the country name.
                          onSelect: (Country country) {
                            print('Select country: ${country.displayName}');
                          },
                          countryListTheme: CountryListThemeData(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.0),
                              topRight: Radius.circular(40.0),
                            ),
                            inputDecoration: InputDecoration(
                              labelText: 'Search',
                              hintText: 'Start typing to search',
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: const Color(0xFF8C98A8).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      child: Text('Show country picker'),
                    ),
                  ),
                  Positioned( top: 277, left: 57, width: 302, height: 306,
                    child: 
                    Image.asset('assets/country_dropdown/world_copy.png')
                    ),

                     Positioned( top: 303, left: 53, width: 295, height: 274,
                    child: 
                    Image.asset('assets/country_dropdown/Frame_copy.png')
                    ),

                    Positioned( top: 635, left:10, width: 384, height: 56,
                      
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 207, 170, 111)
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MailPage(),));
                        }, 
                        child: Text("Continue",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), 
                        fontSize: 20,fontWeight: FontWeight.bold),
                        ))
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
