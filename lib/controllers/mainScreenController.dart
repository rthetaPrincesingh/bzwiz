import 'package:get/get.dart';
import 'package:bzwiz/views/mainScreens/homeScreen/homeScreen.dart';
import 'package:bzwiz/views/mainScreens/profileScreen/profileScreen.dart';
import 'package:bzwiz/views/mainScreens/businessScreen/businessScreen.dart';
import 'package:bzwiz/views/mainScreens/checkListScreen/checkListScreen.dart';
import 'package:bzwiz/views/mainScreens/messageScreens/messageListScreen.dart';
import 'package:bzwiz/views/mainScreens/businessDetailsScreen/businessContactScreen.dart';

class mainScreenController extends GetxController{
  List screens = [homeScreen(),messageListScreen(),businessContactScreen(),businessScreen(),profileScreen()];
  RxInt screenSelected = 0.obs;
}