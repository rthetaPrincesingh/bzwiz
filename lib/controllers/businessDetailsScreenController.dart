// ignore_for_file: file_names

import 'package:get/get.dart';

class businessDetailsScreenController extends GetxController {
  RxString monthSelected = "January".obs;
  List<String> monthNames = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  void setMonth(String month){
    monthSelected.value = month;
  }

}
