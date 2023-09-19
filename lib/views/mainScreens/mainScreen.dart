import 'package:bzwiz/views/mainScreens/bottomNavigationBar.dart';
import 'package:bzwiz/controllers/mainScreenController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mainScreen extends StatelessWidget {
  const mainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(mainScreenController());
    return Scaffold(
      body: Obx(()=>controller.screens[controller.screenSelected.value]),
      bottomNavigationBar: bottomNavigationBar(context, controller),
    );
  }
}