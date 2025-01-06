import 'package:get/get.dart';

class HomePagecontrollar extends GetxController {
  int number = 5;
  void increment() {
    number++;
    update();
  }

  void decrement() {
    number--;
    update();
  }
}
