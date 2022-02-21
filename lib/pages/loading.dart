// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'dart:convert';
import 'package:world_time_app/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';

  void SetupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Kolkata',
        flag: 'india.png',
        url: 'Asia/Kolkata',
        time: 'time');
    await instance.getTime();
    setState(() {
      time = instance.time;
    });
    // print(instance.time);
  }

  @override
  void initState() {
    super.initState();
    SetupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading'),
      ),
      body: Text(time),
    );
  }
}
