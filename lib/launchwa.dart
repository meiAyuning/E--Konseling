// import 'package:flutter/material.dart';
// import 'package:flutter_launch/flutter_launch.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => new _MyAppState();
// }

// class _MyAppState extends State<MyApp> {

//   @override
//   initState() {
//     super.initState();
//   }

//   void whatsAppOpen() async {
//     await FlutterLaunch.launchWathsApp(phone: "6281216799462", message: "Hello");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: new Text('Plugin example app'),
//         ),
//         body: new Center(
//           child: FlatButton(
//             child: Text("Open WhatsApp"),
//             onPressed: () {
//               whatsAppOpen();
//             },
//           )
//         ),
//       ),
//     );
//   }
// }