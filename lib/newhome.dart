import 'package:api_practice/controller.dart';
import 'package:api_practice/model.dart';
import 'package:flutter/material.dart';

class Newhome extends StatelessWidget {
  const Newhome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<ModelCoin?>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.articles!.length,
            itemBuilder: (context, index) {
              var articles = snapshot.data!.articles![index];
              return Card(
                child: Text(articles.publishedAt ?? "shsshs"),
              );
            },
          );
        },
      ),
    );
  }
}
