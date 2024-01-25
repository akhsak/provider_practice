// ignore_for_file: prefer_const_constructors

import 'package:count/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountAPP extends StatefulWidget {
  const CountAPP({super.key});

  @override
  State<CountAPP> createState() => _CountAPPState();
}

class _CountAPPState extends State<CountAPP> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<providerchange>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'count_provider ',
          style: TextStyle(color: Color.fromARGB(255, 234, 222, 222)),
        ),
        backgroundColor: Color.fromARGB(255, 83, 78, 78),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<providerchange>(
                builder: (context, value, child) => Text('${value.a}')),
            TextButton(
                onPressed: () {
                  prov.abc();
                },
                child: Text(
                  'click',
                  style: TextStyle(color: Color.fromARGB(255, 124, 126, 127)),
                )),
          ],
        ),
      ),
    );
  }
}
