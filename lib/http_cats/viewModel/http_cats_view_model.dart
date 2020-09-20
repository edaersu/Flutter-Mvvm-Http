import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http_task/http_cats/model/http_cat_model.dart';
import '../view/http_cats.dart';
import 'package:http/http.dart' as http;

abstract class HttpCatsViewModel extends State<HttpCats> {
  // Add your state and logic here
  final baseUrl = "https://jsonplaceholder.typicode.com/users";

  List<HttpCatModel> httpCats = [];

  @override
  void initState() {
    super.initState();
    callItems();
  }

  Future<void> callItems() async {
    await _getHttpCats();
  }

  Future<void> _getHttpCats() async {
    final response = await http.get("$baseUrl");
    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonBody = jsonDecode(response.body);
        if (jsonBody is List)
          httpCats = jsonBody.map((e) => HttpCatModel.fromJson(e)).toList();
        break;
      default:
    }
  }
}
