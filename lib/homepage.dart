import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/home_page-controllar.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final HomePagecontrollar _homePagecontrollar = Get.put(HomePagecontrollar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Count (Getx)",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GetBuilder<HomePagecontrollar>(builder: (_) {
        return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: AnimatedTextKit(
                    pause: Duration(milliseconds: 1),
                    repeatForever: true,
                    animatedTexts: [
                      FadeAnimatedText(_homePagecontrollar.number.toString(),
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          )),
                    ]),
              ),
            ),
          )
        ]);
      }),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FloatingActionButton(
                  backgroundColor: Colors.red,
                  child: Text('-'),
                  onPressed: _homePagecontrollar.decrement),
            ),
            FloatingActionButton(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: _homePagecontrollar.increment),
          ],
        ),
      ),
    );
  }
}
