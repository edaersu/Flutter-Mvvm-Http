import 'package:flutter/material.dart';
import '../viewModel/http_cats_view_model.dart';

class HttpCatsView extends HttpCatsViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView.builder(
        itemCount: httpCats.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            child: Card(
              child: Container(
                color: Colors.green[100],
                child: infotexts(index),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column infotexts(int index) {
    return Column(
      children: [
        Text(
          "name: " + httpCats[index].name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text("username: " + httpCats[index].username,
            style: TextStyle(fontSize: 16)),
        Text(
          "email: " + httpCats[index].email,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("HEY !"),
    );
  }
}
