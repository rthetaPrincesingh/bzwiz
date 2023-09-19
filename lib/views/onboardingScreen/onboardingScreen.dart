// ignore_for_file: must_be_immutable

import 'package:bzwiz/colorList.dart';
import 'package:bzwiz/controllers/onboardingScreenController.dart';
import 'package:bzwiz/views/signInScreen/signInScreen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class onboardingScreen extends StatelessWidget {
  onboardingScreen({super.key});

  List imageList = ['onboarding1.png', 'onboarding2.png', 'onboarding3.png'];
  List titleList = [
    "Updated vendors assets",
    "Live talk personalised bots",
    "One App for Business & Personal"
  ];
  List descriptionList = [
    "Access all your vendors assets instantly. Get updated data of all kind in single click and contact for your needs.",
    "Easily connect with vendors and start chat with there personalised bots to get all updated data at any time",
    "Book an appointment, schedule reminders, follow up with vendors all in from one app"
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onboardingScreenController());
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Container(
                height: 500,
                child: PageView(
                  controller: controller.pageController,
                  onPageChanged: (page) {
                    controller.currentPage.value = page;
                    controller.currentPageAsDouble.value = page.toDouble();
                  },
                  children: [
                    onBoardingScreenContent(
                        MediaQuery.of(context).size.width - 100, 0),
                    onBoardingScreenContent(
                        MediaQuery.of(context).size.width - 100, 1),
                    onBoardingScreenContent(
                        MediaQuery.of(context).size.width - 100, 2),
                  ],
                ),
              ),
              if (imageList.length > 1)
                Padding(
                  padding: EdgeInsets.only(bottom: 100),
                  child: DotsIndicator(
                    dotsCount: imageList.length,
                    position: controller.currentPageAsDouble.value,
                    decorator: DotsDecorator(
                      activeColor: bzwizBlue,
                      color: Color(0x99555fd2),
                      activeSize: Size(10, 10),
                      size: Size(10, 10),
                    ),
                  ),
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CupertinoButton(
                    borderRadius: BorderRadius.circular(15),
                    color: bzwizBlue,
                    padding: const EdgeInsets.all(16),
                    onPressed: () {
                      controller.currentPage == 2 ? Get.offAll(signInScreen()) :
                      controller.pageController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastEaseInToSlowEaseOut);
                    },
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 80, right: 80, top: 0, bottom: 0),
                        child: Text(
                          controller.currentPage == 2 ? "Start" : "Next",
                          style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  controller.currentPage == 2 ? const SizedBox() : GestureDetector(
                    onTap: ()=> Get.offAll(signInScreen()),
                    child: Text(
                      "Skip for now",
                      style: GoogleFonts.raleway(
                        color: Colors.black45,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget onBoardingScreenContent(size, int i) {
    return Column(
      children: [
        Image.asset(
          "assets/${imageList[i]}",
          width: size,
          height: size,
        ),
        SizedBox(height: 40),
        Text(
          titleList[i],
          style: GoogleFonts.raleway(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 40),
          child: Text(
            descriptionList[i],
            textAlign: TextAlign.center,
            style: GoogleFonts.raleway(
              color: Colors.black45,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}
