// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
//
// class LoginDemo extends StatefulWidget {
//   @override
//   _LoginDemoState createState() => _LoginDemoState();
// }
//
// class _LoginDemoState extends State<LoginDemo> {
//   late Timer _everySecond;
//
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   void dispose() {super.dispose();
//   _everySecond.cancel();}
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title:
//         Obx(() =>txt.internet.value ==""?
//         Text("LogIN", style: TextStyle(fontSize: 30),)
//
//             : Text(txt.internet.value,style: TextStyle(fontSize: 30, color: Colors.red.shade400) )),
//       ),
//       body: SingleChildScrollView(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: <Widget>[
//
//             Container(
//               padding: const EdgeInsets.only(top: 60.0, left: 20),
//               width: MediaQuery.of(context).size.width*0.5,
//               height: MediaQuery.of(context).size.height*0.5,
//               child: Column(
//                 children: [
//                   Padding(
//                     //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
//                     padding: EdgeInsets.symmetric(horizontal: 15),
//                     child: TextField(
//                       autocorrect: false,
//                       decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: 'Meno',
//                           hintText: 'Enter valid promis name'),
//                       onSubmitted: (value) {
//                         txt.meno = value;
//                       },
//                       onChanged: (value) {
//                         txt.meno = value;
//                       },
//                     ),
//                   ),
//
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         left: 15.0, right: 15.0, top: 15, bottom: 10),
//                     //padding: EdgeInsets.symmetric(horizontal: 15),
//                     child: TextField(
//                       expands: false,
//                       obscureText: false,
//                       decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: 'Password',
//                           hintText: 'Enter password'),
//                       onSubmitted: (value) async {
//                         await nm4.fetchProductsTEST2() == true
//                             ? Get.offAll(UvodnaStrana())
//                             : showDialog<String>(
//                           context: context,
//                           builder: (BuildContext context) => AlertDialog(
//                             title: const Text('Zle meno alebo heslo'),
//                             content: const Text('Skús ešte raz'),
//                             actions: <Widget>[
//                               TextButton(
//                                 onPressed: () => Navigator.pop(context, 'Cancel'),
//                                 child: const Text('Cancel'),
//                               ),
//                               TextButton(
//                                 onPressed: () => Navigator.pop(context, 'OK'),
//                                 child: const Text('OK'),
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                       onChanged: (value) {
//                         txt.heslo = value;
//                       },
//                     ),
//                   ),
//
//                   Container(
//                     height: 50,
//                     width: 250,
//                     decoration: BoxDecoration(
//                         color: Colors.blue, borderRadius: BorderRadius.circular(20)),
//                     child: FlatButton(
//                       onPressed: () async {
//                         await nm4.fetchProductsTEST2() == true
//                             ? Get.offAll(UvodnaStrana())
//                             :showDialog<String>(
//                           context: context,
//                           builder: (BuildContext context) => AlertDialog(
//                             title: const Text('Zlé meno alebo heslo'),
//                             content: const Text('skús ešte raz'),
//                             actions: <Widget>[
//                               TextButton(
//                                 onPressed: () => Navigator.pop(context, 'Cancel'),
//                                 child: const Text('Cancel'),
//                               ),
//                               TextButton(
//                                 onPressed: () => Navigator.pop(context, 'OK'),
//                                 child: const Text('OK'),
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                       child: Text(
//                         'Login',
//                         style: TextStyle(color: Colors.white, fontSize: 25),
//                       ),
//                     ),
//                   ),
//                   // SizedBox(
//                   //   height: MediaQuery.of(context).size.height*0.05,
//                   // ),
//                   // Text('New User? Create Account')
//                 ],
//               ),
//             ),
//             Container(alignment: Alignment.centerLeft,
//                 width: MediaQuery.of(context).size.width*0.5,
//                 height: MediaQuery.of(context).size.height*0.7,
//                 /*decoration: BoxDecoration(
//                     color: Colors.red,
//                     borderRadius: BorderRadius.circular(50.0)),*/
//                 child: Image.asset('assets/images/logo.png')),
//           ],
//         ),
//       ),
//     );
//   }
// }
