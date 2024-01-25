// ignore_for_file: prefer_const_constructors

import 'package:count/count_prv.dart';
import 'package:count/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => providerchange(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CountAPP(),
      ),
    );
  }
}
