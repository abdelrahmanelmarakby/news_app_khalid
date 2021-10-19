import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/core/models/news_model.dart';
import 'package:news_app/features/home/controller.dart';

class HomeView extends GetWidget<NewsController> {
  NewsController controller = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsModel>(
      future: controller.getData(),
      builder: (context, snapshot) {
        NewsModel? data = snapshot.data;
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: data!.articles!.length,
            itemBuilder: (context, index) => Card(
              child: Text(data.articles![index].title.toString()),
              shape: const StadiumBorder(

              ),
            ),
          );
        } else {
          return Center(
            child: const CupertinoActivityIndicator(),
          );
        }
      },
    );
  }
}
