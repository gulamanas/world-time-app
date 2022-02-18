// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    print('init state log');
  }

  @override
  Widget build(BuildContext context) {
    print('build state log');

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: TextButton(
        onPressed: () {
          setState(() {
            count += 1;
          });
        },
        child: Text('counter is $count'),
      ),
    );
  }
}
