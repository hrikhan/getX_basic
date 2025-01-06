import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/homepage.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Homepage(),

    );
  }
}
