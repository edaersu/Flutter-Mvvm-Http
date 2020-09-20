import 'package:flutter/material.dart';
import 'package:http_task/http_cats/view/http_cats.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HttpCats(),
    );
  }
}
