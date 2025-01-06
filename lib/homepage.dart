import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Count (Getx)"),
      ),
      body: GetBuilder(builder: (_) {
        return Container();
        
      }),
    );
  }
}
