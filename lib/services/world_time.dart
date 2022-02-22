// import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name of the UI
  late String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for an api endpoint

  WorldTime({
    required this.location,
    required this.flag,
    required this.url,
  });

  Future<void> getTime() async {
    try {
// make the request
      Response response =
          await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);
      // print(data);

      // get properties from data
      String datetime = data['utc_datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      // print(datetime);
      // print(offset);

      // create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset), minutes: 30));
      // time = now.toString();
      time = DateFormat.jm().format(now);
      // print(now);
    } catch (e) {
      print('caught error: $e');
      time = 'Could not get time data';
    }
  }
}
