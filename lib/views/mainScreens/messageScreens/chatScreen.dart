import 'package:bzwiz/views/mainScreens/businessDetailsScreen/businessDetailsScreen.dart';
import 'package:get/get.dart';
import 'package:bzwiz/colorList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class chatScreen extends StatelessWidget {
  const chatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(chatScreenController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: bzwizLightBlue,
      appBar: AppBar(
        backgroundColor: bzwizBlue,
        centerTitle: true,
        title: Text(
          "Baba bzWiz",
          style: GoogleFonts.raleway(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        automaticallyImplyLeading: true,
        leading: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Get.back(),
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: 25,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: i % 2 == 0
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.end,
                          children: [
                            i % 2 == 0
                                ? GestureDetector(
                                    onTap: () =>
                                        Get.to(businessDetailsScreen()),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg"),
                                      radius: 20,
                                    ),
                                  )
                                : SizedBox(),
                            const SizedBox(width: 15),
                            Container(
                              decoration: BoxDecoration(
                                color: i % 2 == 0 ? Colors.white : bzwizBlue,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: i % 2 == 0
                                      ? Radius.circular(0)
                                      : Radius.circular(10),
                                  bottomRight: i % 2 == 0
                                      ? Radius.circular(10)
                                      : Radius.circular(0),
                                ),
                              ),
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  "Hi Can you please tell me my outstanding amount to pay",
                                  style: GoogleFonts.raleway(
                                      color: i % 2 == 0
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: bzwizBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        CupertinoIcons.paperclip,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        height: 56,
                        width: MediaQuery.of(context).size.width - 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
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
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                  hintText: "Enter message",
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
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                Icons.send,
                                color: bzwizBlue,
                              ),
                            )
                          ],
                        ),
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
}
