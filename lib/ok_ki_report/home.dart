// import 'package:api_practice/ok_ki_report/controller.dart';
// import 'package:api_practice/ok_ki_report/model.dart';
// import 'package:flutter/material.dart';

// // class Home extends StatelessWidget {
// //   const Home({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: FutureBuilder<ModelCoin?>(
// //         future: fetchData(),
// //         builder: (context, snapshot) {
// //           return ListView.builder(
// //             itemCount: snapshot.data!.articles!.length,
// //             itemBuilder: (context, index) {
// //               var articles = snapshot.data!.articles![index];
// //               return Card(
// //                 child: Text(articles.title ?? "shayan"),
// //               );
// //             },
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: fetchData(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator(),);
//           }
//           return ListView.builder(
//             itemCount: snapshot.data!.articles!.length,
//             itemBuilder: (context, index) {
//               var articles = snapshot.data!.articles![index];
//               return Card(
//                 child: Text(articles.description ?? "shayan"),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
