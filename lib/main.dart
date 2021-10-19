import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/features/home/view.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      title: 'Material App',
      home: HomeView(),

    );
  }
}