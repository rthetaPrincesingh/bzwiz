import 'package:bzwiz/views/onboardingScreen/onboardingScreen.dart';
import 'package:get/get.dart';

class splashScreenController extends GetxController{
  @override
  void onInit() {
    splashScreenLoader();
    super.onInit();
  }
  void splashScreenLoader() async{
    await Future.delayed(Duration(seconds: 3),() => Get.offAll(onboardingScreen()),);
  }
}