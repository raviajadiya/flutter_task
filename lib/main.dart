import 'package:flutter/material.dart';
import './nextscreen/homepage.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      debugShowCheckedModeBanner: false,
      home: firstpage(),

    );
  }
}

class firstpage extends StatefulWidget {
  @override
  _firstpageState createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          centerTitle: true,
          actions: [
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
            }, child: Icon(Icons.add))
          ],

        ),
      ),

    );
  }
}
























// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Demo",
//       home: Homepage(),
//     );
//   }
// }
// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
// class _HomepageState extends State<Homepage> {
//   List statename = ["A","B","C","D","E"];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.pinkAccent.shade100,
//         title: Text("Demo"),
//         centerTitle: true,
//       ),
//
//       backgroundColor: Color.fromRGBO(250, 192, 203, 10),
//       body: Padding(
//         padding: EdgeInsets.all(10),
//         child: Center(
//           child: Form(
//               child:Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   TextField(
//                     style: TextStyle(fontSize: 25),
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       labelText: "Name",
//                     ),
//                   ),
//                   Padding(padding: EdgeInsets.only(top: 20),
//                     child: TextField(
//                       style: TextStyle(fontSize: 25),
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10)
//                         ),
//                         labelText: "Address",
//                       ),
//                     ),
//                   ),
//                   Padding(padding: EdgeInsets.only(top: 20),
//                     child: DropdownButton(
//                       onChanged: (value) {
//                         setState(() {
//
//                         });
//                       },
//                       items: statename.map((e) => null),
//                     ),
//                   )
//
//                   // Row(
//                   //   children: [
//                   //     Padding(
//                   //       padding: EdgeInsets.only(top: 20,left: 50),
//                   //       child: RaisedButton(color: Color.fromRGBO(127, 140, 141, 7),
//                   //         shape: RoundedRectangleBorder(
//                   //             borderRadius: BorderRadius.circular(10)
//                   //         ),
//                   //         onPressed: () {
//                   //         },
//                   //         child: Text("Login",style: TextStyle(color: Colors.white),),
//                   //       ),
//                   //     )
//                   //   ],
//                   // )
//                 ],
//               )
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // void main(){
// //   runApp(MyApp());
// // }
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: "Login",
// //       home: Scaffold(
// //         body: Container(
// //           margin: EdgeInsets.symmetric(vertical: 350,horizontal: 150),
// //           child: Column(
// //             children: [
// //
// //               ClipRRect(
// //                 borderRadius: BorderRadius.circular(50),
// //                 child: FlatButton(
// //                     padding: EdgeInsets.all(10),
// //                     color: Colors.red,
// //                     onPressed: () {
// //                     }, child:Text("Login")),
// //
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
