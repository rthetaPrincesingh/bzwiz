// ignore_for_file: must_be_immutable

import 'package:bzwiz/colorList.dart';
import 'package:bzwiz/views/signInScreen/mobileVerificationScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class signInScreen extends StatelessWidget {
  signInScreen({super.key});


  TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: bzwizBlue,
        title: Text(
          "Sign Up",
          style: GoogleFonts.raleway(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            top: -80,
            child: SvgPicture.asset("assets/logInpallet 1.svg"),
          ),
          Positioned(
            bottom: 0,
            child: SvgPicture.asset("assets/logInpallet 2.svg"),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome!",
                    style: GoogleFonts.raleway(
                      color: bzwizBlue,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Sign up to continue.",
                    style: GoogleFonts.raleway(
                      color: Color(0xff172331),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Mobile",
                        style: GoogleFonts.raleway(
                          color: Color(0x80172331),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xFFF3F4F8),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: numberController,
                        cursorColor: Colors.black87,
                        maxLines: 1,
                        minLines: 1,
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          // prefix: Text("+91"),
                          counterText: '',
                          prefixIcon: SvgPicture.asset(
                              "assets/icons/phone_icon.svg",
                              color: Color(0xff8C8FA5),
                              fit: BoxFit.scaleDown),
                          border: InputBorder.none,
                          hintText: "+919867002459",
                          hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xff8C8FA5),
                          ),
                        ),
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CupertinoButton(
                      borderRadius: BorderRadius.circular(10),
                      color: bzwizBlue,
                      onPressed: () => Get.to(mobileVerificationScreen()),
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        child: Text(
                          "Verify",
                          style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned.fill(
            bottom: 40,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Don’t have an account? Sign Up",
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
