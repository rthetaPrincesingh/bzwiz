import 'package:bzwiz/colorList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

Widget bottomNavigationBar(context, controller) {
  return Container(
    color: bzwizLightBlue,
    child: Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 0,
            blurRadius: 15,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(17),
          topRight: Radius.circular(17),
        ),
      ),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => controller.screenSelected.value = 0,
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 50) / 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/home_icon.svg",
                        height: 25,
                        width: 25,
                        color: controller.screenSelected.value == 0
                            ? bzwizBlue
                            : Color(0xff8C8FA5)),
                    controller.screenSelected.value == 0
                        ? dotIndicator()
                        : SizedBox(),
                  ],
                ),
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => controller.screenSelected.value = 1,
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 50) / 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/message_icon.svg",
                        height: 25,
                        width: 25,
                        color: controller.screenSelected.value == 1
                            ? bzwizBlue
                            : Color(0xff8C8FA5)),
                    controller.screenSelected.value == 1
                        ? dotIndicator()
                        : SizedBox(),
                  ],
                ),
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => controller.screenSelected.value = 2,
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 50) / 5,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned.fill(
                      top: -55,
                      child: Align(  //todo Icon change from png to svg
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/Ellipse.png",
                          fit: BoxFit.contain,
                          height: 60,
                          width: 60,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: -25,
                      child: Align(  //todo Icon change from png to svg
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/logo mascot.png",
                          fit: BoxFit.contain,
                          /*color: controller.screenSelected.value == 2
                                ? bzwizBlue
                                : Color(0xff8C8FA5)*/
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => controller.screenSelected.value = 3,
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 50) / 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [  //todo Icon change from png to svg
                    Image.asset(
                      "assets/icons/business-icon.png",
                      fit: BoxFit.contain,
                      height: 30,
                      width: 30,
                      color: controller.screenSelected.value == 3
                          ? bzwizBlue
                          : Color(0xff8C8FA5),
                    ),
                    controller.screenSelected.value == 3
                        ? dotIndicator()
                        : SizedBox(),
                  ],
                ),
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => controller.screenSelected.value = 4,
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 50) / 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/profile_icon.svg",
                        height: 25,
                        width: 25,
                        color: controller.screenSelected.value == 4
                            ? bzwizBlue
                            : Color(0xff8C8FA5)),
                    controller.screenSelected.value == 4
                        ? dotIndicator()
                        : SizedBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget dotIndicator() {
  return Padding(
    padding: EdgeInsets.all(3),
    child: Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: bzwizBlue),
      width: 6,
      height: 6,
    ),
  );
}
