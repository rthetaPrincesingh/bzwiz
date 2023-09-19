import 'package:bzwiz/colorList.dart';
import 'package:bzwiz/views/mainScreens/mainScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class mobileVerificationScreen extends StatelessWidget {
  const mobileVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: bzwizBlue,
        title: Text(
          "Mobile Verification",
          style: GoogleFonts.raleway(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: GestureDetector(
            onTap: ()=> Get.back(),
            child: Icon(CupertinoIcons.arrow_left,color: Colors.white)),
        automaticallyImplyLeading: true,
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
                    "Get Your Code",
                    style: GoogleFonts.raleway(
                      color: bzwizBlue,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Please enter the 4 digit code sent to your mobile number",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.raleway(
                      color: Color(0xff172331),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 50),
                  OtpTextField(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    fieldWidth: 60,
                    cursorColor: Colors.black87,
                    autoFocus: true,
                    keyboardType: TextInputType.number,
                    fillColor: Color(0x33555fd2),
                    filled: true,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    textStyle: GoogleFonts.poppins(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600
                    ),
                    numberOfFields: 4,
                    borderColor: bzwizBlue,
                    focusedBorderColor: bzwizBlue,
                    showFieldAsBox: true,
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    onSubmit: (code){

                    }, // end onSubmit
                  ),
                  SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'If you don’t receive code! ',
                          style: GoogleFonts.raleway(
                            color: Color(0x80172331),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: ' Resend',
                          style: GoogleFonts.raleway(
                            color: bzwizBlue,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CupertinoButton(
                      borderRadius: BorderRadius.circular(10),
                      color: bzwizBlue,
                      onPressed: () => Get.to(mainScreen()),//Get.to(homeScreen()),
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        child: Text(
                          "Verify and Proceed",
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
        ],
      ),
    );
  }
}
