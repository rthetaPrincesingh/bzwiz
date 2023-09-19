import 'package:get/get.dart';
import 'package:bzwiz/colorList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bzwiz/models/tempData.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bzwiz/views/mainScreens/messageScreens/chatScreen.dart';
import 'package:bzwiz/views/mainScreens/businessDetailsScreen/businessDetailsScreen.dart';

class businessScreen extends StatelessWidget {
  const businessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bzwizLightBlue,
      appBar: AppBar(
        backgroundColor: bzwizBlue,
        centerTitle: true,
        title: Text(
          "Business",
          style: GoogleFonts.raleway(
              fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: tempData.length,
            itemBuilder: (_, i) => nearbyBusinesses(context, i),
          ),
        ),
      ),
    );
  }

  Widget nearbyBusinesses(context, i){
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
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
                    onTap: () => Get.to(businessDetailsScreen()),
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
                      padding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 5),
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
