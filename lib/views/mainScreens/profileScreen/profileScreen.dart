import 'package:bzwiz/colorList.dart';
import 'package:bzwiz/views/signInScreen/signInScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bzwizLightBlue,
      appBar: AppBar(
        backgroundColor: bzwizBlue,
        centerTitle: true,
        title: Text(
          "Profile",
          style: GoogleFonts.raleway(
              fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              "assets/icons/notification_icon.svg",
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: bzwizBlue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  minRadius: 52,
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        "https://careersplay.com/wp-content/uploads/2022/05/love-be-smile-dp.jpg",
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Customer Name",
                  style: GoogleFonts.raleway(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  "customer-1@gmail.com",
                  style: GoogleFonts.raleway(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  ProfileOption("profile", "Profile Settings"),
                  ProfileOption("notification_thin_icon", "Notifications"),
                  ProfileOption("heart_icon", "Favourite"),
                  ProfileOption("payment_icon", "Payment Details"),
                  ProfileOption("group_user_icon", "Refer a friend"),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 8, 30, 30),
            child: Container(
              // height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,20,30,5),
                    child: Text(
                      "Terms & Conditions",
                      style: GoogleFonts.raleway(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff8C8FA5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,5,30,5),
                    child: Text(
                      "About Us",
                      style: GoogleFonts.raleway(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff8C8FA5),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: ()=> Get.offAll(signInScreen()),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30,5,30,20),
                      child: Text(
                        "Log out",
                        style: GoogleFonts.raleway(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: bzwizBlue,
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
    );
  }
}

Widget ProfileOption(String iconName, String title) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 40,
          height: 20,
          child: Align(
            alignment: Alignment.centerLeft,
            child: SvgPicture.asset("assets/icons/${iconName}.svg",
                height: 15, width: 15),
          ),
        ),
        Text(
          title,
          style: GoogleFonts.raleway(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff8C8FA5),
          ),
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: Color(0xff8C8FA5),
          size: 15,
          weight: 10,
        ),
      ],
    ),
  );
}
