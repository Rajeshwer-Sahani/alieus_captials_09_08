// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';

// class TermsUI extends StatefulWidget {
//   @override
//   _TermsUIState createState() => _TermsUIState();
// }

// class _TermsUIState extends State<TermsUI> {
//   bool isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("test"),
//       ),
//       backgroundColor: Colors.black,
//       body: Stack(
//         children: [
//           // Main content (you can replace with your page content / image)
//           Positioned.fill(
//             child: Column(
//               children: [
//                 Expanded(child: Stack()), // top space or other widgets

//                 // Bottom Section
//                 Padding( 
//                   padding: const EdgeInsets.all(20.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       // Gradient Continue Button
//                       GestureDetector(
//                         onTap: isChecked
//                             ? () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => NextPage()),
//                                 );
//                               }
//                             : null,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(vertical: 15),
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [
//                                 Color(0xFFF3C96B),
//                                 Color(0xFFD4A545),
//                               ],
//                             ),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           alignment: Alignment.center,
//                           child: Text(
//                             "Continue",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 15),

//                       // Checkbox with long text
//                       CheckboxListTile(
//                         value: isChecked,
//                         onChanged: (val) {
//                           setState(() {
//                             isChecked = val ?? false;
//                           });
//                         },
//                         controlAffinity: ListTileControlAffinity.leading,
//                         activeColor: Color(0xFFD4A545), // golden tick color
//                         contentPadding: EdgeInsets.zero,
//                         title: Text(
//                           "I declare and confirm that I am not a citizen or "
//                           "resident of the US for tax purpose.",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 14,
//                           ),
//                         ),
//                       ),

//                       SizedBox(height: 15),

//                       // Terms paragraph
//                       Text.rich(
//                         TextSpan(
//                           style: TextStyle(color: Colors.white70, fontSize: 13),
//                           children: [
//                             TextSpan(
//                                 text:
//                                     "Based on the selected country of residence, you are registering with PHEONIXFX, regulated by the Seychelles FSA\n\n"),
//                             TextSpan(
//                                 text:
//                                     "By clicking Continue you confirm that you have read, understood, and agree with all the information in the "),
//                             TextSpan(
//                               text: "Client Agreement",
//                               style: TextStyle(color: Colors.orangeAccent),
//                               // you can wrap with GestureRecognizer for tap
//                             ),
//                             TextSpan(
//                                 text:
//                                     " and the service terms and conditions for your country listed in the following documents: "),
//                             TextSpan(
//                               text: "General Business Terms",
//                               style: TextStyle(color: Colors.orangeAccent),
//                             ),
//                             TextSpan(text: " and "),
//                             TextSpan(
//                     text: "Partnership Agreement.",
//                     style: TextStyle(color: Colors.orangeAccent),
//                     recognizer: TapGestureRecognizer()
//                       ..onTap = () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) =>
//                                   WebPage(title: "Partnership Agreement")),
//                         );
//                       },
//                   ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NextPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Next Page")),
//       body: Center(child: Text("Welcome to the next page!")),
//     );
//   }
// }


// // Dummy WebPage (replace with WebView if needed)
// class WebPage extends StatelessWidget {
//   final String title;
//   WebPage({required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: Center(
//         child: Text("This is the $title page"),
//       ),
//     );
//   }
// }

