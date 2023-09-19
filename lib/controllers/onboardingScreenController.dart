import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class onboardingScreenController extends GetxController{
  final pageController = PageController(initialPage: 0);
  RxDouble currentPageAsDouble = 0.0.obs;
  RxString bottomButtonText = "Next".obs;
  RxBool skipButton = true.obs;
  RxInt currentPage = 0.obs;
}