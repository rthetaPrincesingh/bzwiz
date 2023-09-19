import 'package:bzwiz/colorList.dart';
import 'package:bzwiz/views/mainScreens/messageScreens/chatScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class messageListScreen extends StatelessWidget {
  const messageListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bzwizLightBlue,
      appBar: AppBar(
        backgroundColor: bzwizBlue,
        centerTitle: true,
        title: Text(
          "Messages",
          style: GoogleFonts.raleway(
              fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(CupertinoIcons.square_pencil, color: Colors.white),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xFFF3F4F8),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
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
                            color: const Color(0xff8C8FA5),
                            fit: BoxFit.scaleDown),
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: GoogleFonts.raleway(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: const Color(0xff8C8FA5),
                        ),
                      ),
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: bzwizBlue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          CupertinoIcons.slider_horizontal_3,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => Get.to(chatScreen()),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg"),
                              radius: 25,
                            ),
                            const SizedBox(width: 15),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name $i",
                                  style: GoogleFonts.raleway(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Typing...",
                                  style: GoogleFonts.raleway(
                                      color: bzwizBlue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "08:50 Am",
                                  style: GoogleFonts.raleway(
                                      color: bzwizBlue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 8),
                                i % 2 == 0
                                    ? CircleAvatar(
                                        backgroundColor: bzwizBlue,
                                        radius: 8,
                                        child: const Padding(
                                          padding: EdgeInsets.all(2),
                                          child: Text("2",
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.white)),
                                        ),
                                      )
                                    : const SizedBox(height: 16),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
