import 'package:bzwiz/controllers/writeReviewScreenController.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:bzwiz/colorList.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class writeReviewScreen extends StatelessWidget {
  const writeReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(writeReviewScreenController());
    return Scaffold(
      backgroundColor: bzwizLightBlue,
      appBar: AppBar(
        backgroundColor: bzwizBlue,
        centerTitle: true,
        title: Text(
          "Write a Review",
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
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: bzwizLightBlue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40,bottom: 30),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg"),
                  radius: 50,
                ),
              ),
              Text(
                "How was your experience with",
                style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Dr. Tanisha Kumari?",
                style: GoogleFonts.raleway(
                    color: bzwizBlue, fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, i) {
                    return Obx(
                      () => GestureDetector(
                        onTap: () => controller.reviewStars.value = i,
                        child: Icon(
                          Icons.star_rounded,
                          size: 30,
                          color: controller.reviewStars.value >= i
                              ? Color(0xffFFA873)
                              : Colors.grey,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Write a comment",
                          style: GoogleFonts.raleway(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Max 600 words",
                          style: GoogleFonts.raleway(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,bottom: 15),
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey
                          )
                        ),
                      ),
                    ),
                    Text(
                      "Would you recommend Dr. Tanisha Kumari to your friend?",
                      style: GoogleFonts.raleway(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Obx(
                      () => Row(
                        children: [
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () => controller.recommend.value = true,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  size: 18,
                                  color: controller.recommend.value
                                      ? bzwizBlue
                                      : Colors.grey,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Yes",
                                  style: GoogleFonts.raleway(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 50),
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () => controller.recommend.value = false,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  size: 18,
                                  color: controller.recommend.value
                                      ? Colors.grey
                                      : bzwizBlue,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "No",
                                  style: GoogleFonts.raleway(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      // height: 40,
                      child: CupertinoButton(
                        borderRadius: BorderRadius.circular(10),
                        color: bzwizBlue,
                        onPressed: ()=> Get.to(writeReviewScreen()),
                        child: DefaultTextStyle(
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          child: Text(
                            "Write Review",
                            style: GoogleFonts.raleway(
                                color: Colors.white,
                                // fontSize: 20,
                                fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
