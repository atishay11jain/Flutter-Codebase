import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   var cnt = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text("$cnt"),
//               TextButton(
//                 child: Text("+"),
//                 onPressed: () {
//                   cnt++;
//                   print(cnt);
//                 },
//               ),
//             ],
//           ),
//         ),
// //       ),
// //     );
//   }
// }

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var cnt = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("$cnt"),
              TextButton(
                child: Text("+"),
                onPressed: () {
                  setState(() {
                    cnt++;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
