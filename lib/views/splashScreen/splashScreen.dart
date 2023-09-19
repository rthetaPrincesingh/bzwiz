// ignore_for_file: unused_local_variable

import 'package:bzwiz/colorList.dart';
import 'package:bzwiz/controllers/splashScreenController.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(splashScreenController());
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/logo.png"),
        Text("bzwiz",style: GoogleFonts.raleway(
            fontSize: 35,
          color: bzwizBlue,
          decoration: TextDecoration.none
        ),),
        Text("stay connected",style: GoogleFonts.raleway(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.none
        ),),
      ],
    );
  }
}
