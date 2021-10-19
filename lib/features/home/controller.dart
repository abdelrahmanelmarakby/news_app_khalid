import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/core/models/news_model.dart';

class NewsController extends GetxController {
  Future<NewsModel>? getData() async {
    final url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=eg&category=sport&apiKey=bf86a6d7879e480ea8cbb0fddc8b2e18");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      try {
        return NewsModel.fromJson(jsonDecode(response.body));
      } catch (e) {
        Get.snackbar("Can't get data ", e.toString());
      }
    }
    return NewsModel(status: "fail", totalResults: 0, articles: []);
  }
}
