// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    Response response = await get(
        Uri.parse("http://worldtimeapi.org/api/timezone/Asia/Kolkata"));
    Map data = jsonDecode(response.body);
    print(data);
    // String datetime = data['utc_date'];
    // String offset = data['utc_offset'];
    // print(datetime);
    // print(offset);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading'),
      ),
      body: Text('loading screen'),
    );
  }
}
