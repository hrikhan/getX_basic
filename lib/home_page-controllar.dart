import 'package:get/get.dart';

class HomePagecontrollar extends GetxController {
  int number = 0;
  void increment() {
    number++;
    update();
    print(number);
  }

  void decrement() {
    if (number > 0) number--;
    update();
  }
}
