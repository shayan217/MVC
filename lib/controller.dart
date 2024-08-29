import 'dart:convert';
import 'package:api_practice/model.dart';
import 'package:http/http.dart' as http;

Future<ModelCoin?> fetchData() async {
  var request = http.Request(
      'GET',
      Uri.parse(
          'https://newsapi.org/v2/everything?q=apple&from=2024-08-28&to=2024-08-28&sortBy=popularity&apiKey=0b27d0477afe4bb6a6825d032091bbed'));

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    String ertyu = await response.stream.bytesToString();
    Map<String, dynamic> smssj = json.decode(ertyu);
    return ModelCoin.fromJson(smssj);
  } else {
    print(response.reasonPhrase);
  }
}
