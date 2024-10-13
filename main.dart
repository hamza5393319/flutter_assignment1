//----------------------------------------------- Chess Board Design-----------------------------------------------// 

// import 'package:flutter/material.dart';

// void main() {
//   runApp(ChessBoardApp());
// }

// class ChessBoardApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.cyan.shade200,
//         appBar: AppBar(
//           title: Text('Chessboard'),
//         ),
//         body: Center(
//           child: ChessBoard(),
//         ),
//       ),
//     );
//   }
// }

// class ChessBoard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//       width: 320,  
//       height: 320,
//       child: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 8,  
//         ),
//         itemBuilder: (context, index) {
//           final int row = index ~/ 8;  
//           final int column = index % 8;  


//           final bool isBlack = (row + column) % 2 == 0;

//           return Container(
//             color: isBlack ? Colors.black : Colors.white,
//           );
//         },
//         itemCount: 64,  
//       ),
//     );
//   }
// }

//----------------------------------------------- Ludo Board Design-----------------------------------------------//

// import 'package:flutter/material.dart';

// void main() {
//   runApp(ChessDesign());
// }

// class ChessDesign extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LudoBoard(),
//     );
//   }
// }

// class LudoBoard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.cyan.shade200,
//       appBar: AppBar(
//         title: Text("Ludo Board"),
//       ),
//       body: Center(
//         child: Container(
//           height: 400,
//           width: 400,
//           child: GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 15, 
//             ),
//             itemBuilder: (context, index) {
//               Color color = Colors.white; 


//               if (index % 15 < 6 && index ~/ 15 < 6) {
//                 color = Colors.green; 
//               } else if (index % 15 >= 9 && index ~/ 15 < 6) {
//                 color = Colors.yellow; 
//               } else if (index % 15 < 6 && index ~/ 15 >= 9) {
//                 color = Colors.red; 
//               } else if (index % 15 >= 9 && index ~/ 15 >= 9) {
//                 color = Colors.blue; 
//               }


//               if ((index % 15 == 6 || index % 15 == 8) && (index ~/ 15 >= 6 && index ~/ 15 <= 8)) {
//                 color = Colors.grey;
//               }
//               if ((index ~/ 15 == 6 || index ~/ 15 == 8) && (index % 15 >= 6 && index % 15 <= 8)) {
//                 color = Colors.grey;
//               }

//               if (index == 7 + 7 * 15) {
//                 color = Colors.redAccent; 
//               }

//               if ((index % 15 == 2 || index % 15 == 3) &&
//                   (index ~/ 15 == 2 || index ~/ 15 == 3)) {
//                 color = Colors.white;
//               } else if ((index % 15 == 11 || index % 15 == 12) &&
//                   (index ~/ 15 == 2 || index ~/ 15 == 3)) {
//                 color = Colors.white;
//               } else if ((index % 15 == 2 || index % 15 == 3) &&
//                   (index ~/ 15 == 11 || index ~/ 15 == 12)) {
//                 color = Colors.white;
//               } else if ((index % 15 == 11 || index % 15 == 12) &&
//                   (index ~/ 15 == 11 || index ~/ 15 == 12)) {
//                 color = Colors.white;
//               }

//               return Container(
//                 margin: EdgeInsets.all(1),
//                 color: color,
//                 child: Center(
//                   child: (color == Colors.white &&
//                       ((index % 15 == 2 || index % 15 == 3) ||
//                           (index % 15 == 11 || index % 15 == 12)))
//                       ? CircleAvatar(
//                     backgroundColor: Colors.black,
//                     radius: 5,
//                   )
//                       : null,
//                 ),
//               );
//             },
//             itemCount: 225, 
//           ),
//         ),
//       ),
//     );
//   }
// }
