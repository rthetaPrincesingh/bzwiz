import 'package:bzwiz/colorList.dart';
import 'package:bzwiz/views/mainScreens/businessDetailsScreen/businessDetailsScreen.dart';
import 'package:bzwiz/views/mainScreens/checkListScreen/checkListScreen.dart';
import 'package:bzwiz/views/mainScreens/messageScreens/chatScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bzwiz/models/tempData.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class homeScreen extends StatelessWidget {
  homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bzwizBlue,
      appBar: AppBar(
        backgroundColor: bzwizBlue,
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Current Location",
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  wordSpacing: 2),
            ),
            Text(
              "Mumbai",
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
          ],
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: SvgPicture.asset("assets/icons/menuBar_icon.svg",
              fit: BoxFit.scaleDown),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: SvgPicture.asset("assets/icons/location_icon.svg",
                fit: BoxFit.scaleDown),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20,30,20,20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find your desired",
                    style: GoogleFonts.raleway(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Text(
                    "ask anything",
                    style: GoogleFonts.raleway(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F4F8),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 0,
                          blurRadius: 6,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          child: TextFormField(
                            cursorColor: Colors.black87,
                            maxLines: 1,
                            minLines: 1,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: SvgPicture.asset(
                                  "assets/icons/search_icon.svg",
                                  color: Color(0xff8C8FA5),
                                  fit: BoxFit.scaleDown),
                              border: InputBorder.none,
                              hintText: "Search",
                              hintStyle: GoogleFonts.raleway(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xff8C8FA5),
                              ),
                            ),
                            style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: ()=>Get.to(checkListScreen()),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: bzwizBlue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  CupertinoIcons.slider_horizontal_3,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: bzwizLightBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20,30,20,20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Recent Activities",
                          style: GoogleFonts.raleway(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87),
                        ),
                        Text(
                          "See All",
                          style: GoogleFonts.raleway(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: bzwizBlue),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: (MediaQuery.of(context).size.width - 60) / 3,
                      child: AspectRatio(
                        aspectRatio: 3,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, i) => recentActivitiesContainer(context, i),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Nearby Business",
                          style: GoogleFonts.raleway(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87),
                        ),
                        Text(
                          "See All",
                          style: GoogleFonts.raleway(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: bzwizBlue),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (_, i) => nearbyBusinessContainer(context, i),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  recentActivitiesContainer(context, int i) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: ()=> Get.to(businessDetailsScreen()),
      child: Container(
        margin: i == 2 ? EdgeInsets.only(right: 0) : EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        width: (MediaQuery.of(context).size.width - 60) / 3,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(tempData[i][5]),
                  ),
                ),
              ),
              Text(
                tempData[i][4],
                style: GoogleFonts.raleway(
                    // fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
    );
  }

  nearbyBusinessContainer(context, int i) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Container(
        height: (MediaQuery.of(context).size.width - 100) / 3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
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
                  width: 80,
                  child: GestureDetector(
                    onTap: ()=> Get.to(businessDetailsScreen()),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(tempData[i][5]),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tempData[i][0],
                      style: GoogleFonts.raleway(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87),
                    ),
                    Text(
                      tempData[i][1],
                      style: GoogleFonts.raleway(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8C8FA5)),
                    ),
                    Text(
                      tempData[i][2],
                      style: GoogleFonts.raleway(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffEFA315),
                        size: 18,
                      ),
                      Text(
                        tempData[i][3],
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    width: 70,
                    height: 30,
                    child: CupertinoButton(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                      color: bzwizBlue,
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      child: Text(
                        'Chat',
                        style: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      onPressed: () => Get.to(chatScreen()),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
