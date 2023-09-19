import 'package:get/get.dart';
import 'package:bzwiz/colorList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:bzwiz/controllers/businessDetailsScreenController.dart';

class businessDetailsScreen extends StatelessWidget {
  const businessDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(businessDetailsScreenController());
    return Scaffold(
      backgroundColor: bzwizLightBlue,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            SizedBox(
              height: 50,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => Get.back(),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Container(
                height: (MediaQuery.of(context).size.width - 80) / 3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/7/75/Zomato_logo.png"),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Top 10 Mobile Shop",
                              style: GoogleFonts.raleway(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black87),
                            ),
                            Text(
                              "Mobile Shop",
                              style: GoogleFonts.raleway(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff8C8FA5)),
                            ),
                            Text(
                              "Lower Parel",
                              style: GoogleFonts.raleway(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff8C8FA5)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Icon(
                              Icons.star,
                              color: Color(0xffEFA315),
                              size: 16,
                            ),
                          ),
                          Text(
                            "4.1",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: bzwizBlue,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 40, 30, 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white24,
                            radius: 30,
                            child: SvgPicture.asset(
                                "assets/icons/Customer_icon.svg",
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1000+",
                                  style: GoogleFonts.raleway(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Customers",
                                  style: GoogleFonts.raleway(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          CircleAvatar(
                            backgroundColor: Colors.white24,
                            radius: 30,
                            child: SvgPicture.asset(
                                "assets/icons/Medal_icon.svg",
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "5 Years",
                                  style: GoogleFonts.raleway(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Experience",
                                  style: GoogleFonts.raleway(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "About Business",
                                  style: GoogleFonts.raleway(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey),
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                  style: GoogleFonts.raleway(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Working Time",
                                  style: GoogleFonts.raleway(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey),
                                ),
                                Text(
                                  "Mon-Fri 09:00 am - 08:00 pm",
                                  style: GoogleFonts.raleway(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Obx(
                                      () => Text(
                                        controller.monthSelected.value,
                                        style: GoogleFonts.raleway(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    PullDownButton(
                                      itemBuilder: (context) {
                                        final List<PullDownMenuEntry>
                                            menuItems = controller.monthNames
                                                .map((monthName) {
                                          return PullDownMenuItem(
                                            title: monthName,
                                            onTap: () =>
                                                controller.setMonth(monthName),
                                          );
                                        }).toList();
                                        return menuItems;
                                      },
                                      buttonBuilder: (context, showMenu) {
                                        return CupertinoButton(
                                          onPressed: showMenu,
                                          padding: EdgeInsets.zero,
                                          child: const Icon(
                                            Icons.keyboard_arrow_down_outlined,
                                            color: Colors.grey,
                                          ),
                                        );
                                      },
                                    )
                                  ],
                                ),
                                SizedBox(height: 100),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.width / 6,
                                      width: MediaQuery.of(context).size.width / 6,
                                      decoration: BoxDecoration(
                                        color: bzwizBlue.withOpacity(0.25),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(CupertinoIcons.suit_heart_fill,size: 35,color: Colors.white),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: MediaQuery.of(context).size.width / 6,
                                      width: MediaQuery.of(context).size.width / 6,
                                      decoration: BoxDecoration(
                                        color: bzwizBlue.withOpacity(0.25),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(CupertinoIcons.phone_fill,size: 35,color: Colors.white),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: MediaQuery.of(context).size.width / 6,
                                      width: MediaQuery.of(context).size.width / 6,
                                      decoration: BoxDecoration(
                                        color: bzwizBlue,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(CupertinoIcons.chat_bubble_text_fill,size: 35,color: Colors.white),
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: MediaQuery.of(context).size.width / 6,
                                      width: MediaQuery.of(context).size.width / 6,
                                      decoration: BoxDecoration(
                                        color: bzwizBlue,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Image.asset("assets/logo.png"),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
