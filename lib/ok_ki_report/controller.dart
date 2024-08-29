// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'model.dart';
// Future<ModelCoin?> fetchData() async {
//   var request = http.Request(
//       'GET',
//       Uri.parse(
//           'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=0b27d0477afe4bb6a6825d032091bbed'));

//   http.StreamedResponse response = await request.send();

//   if (response.statusCode == 200) {
//     String responseJson = await response.stream.bytesToString();
//     Map<String, dynamic> jsonData = json.decode(responseJson);
//     return ModelCoin.fromJson(jsonData); 
//   } else {
//     print(response.reasonPhrase);
//   }
// }
