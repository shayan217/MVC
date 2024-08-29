import 'dart:convert';
import 'package:api_practice/model.dart';
import 'package:http/http.dart' as http;
Future<ModelCoin?> fetchData() async {
  var request = http.Request(
      'GET',
      Uri.parse(
          'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=0b27d0477afe4bb6a6825d032091bbed'));
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    String JsonResponse = await response.stream.bytesToString();
    Map<String, dynamic> yeeess = json.decode(JsonResponse);
    return ModelCoin.fromJson(yeeess);
  } else {
    print(response.reasonPhrase);
  }
}
