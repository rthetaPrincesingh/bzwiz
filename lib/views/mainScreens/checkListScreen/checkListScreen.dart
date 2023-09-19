import 'package:bzwiz/colorList.dart';
import 'package:bzwiz/controllers/checkListScreenController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class checkListScreen extends StatelessWidget {
  const checkListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(checkListScreenController());
    return Scaffold(
      backgroundColor: bzwizLightBlue,
      appBar: AppBar(
        backgroundColor: bzwizBlue,
        centerTitle: true,
        title: Text(
          "Checklist",
          style: GoogleFonts.raleway(
              fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        automaticallyImplyLeading: true,
        leading: GestureDetector(
            onTap: ()=> Get.back(),
            child: Icon(Icons.arrow_back, color: Colors.white)),
        actions: [
          GestureDetector(
            onTap: (){
              controller.selectedConsultType.value = 0;
              controller.selectedDoctorStatus.value = 0;
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                "Reset All",
                style: GoogleFonts.raleway(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Doctor Status",
              style: GoogleFonts.raleway(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: controller.doctorStatus.length,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: (){
                      controller.selectedDoctorStatus.value = i;
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4,bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(controller.doctorStatus[i],style: GoogleFonts.raleway(fontSize: 18, fontWeight: FontWeight.w600),),
                          Obx(()=> Icon(Icons.check_circle,size: 18,color: controller.selectedDoctorStatus.value == i ? bzwizBlue : Colors.grey,))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Consult Type",
              style: GoogleFonts.raleway(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: controller.consultType.length,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: (){
                      controller.selectedConsultType.value = i;
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4,bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(controller.consultType[i],style: GoogleFonts.raleway(fontSize: 18, fontWeight: FontWeight.w600),),
                          Obx(()=> Icon(Icons.check_circle,size: 18,color: controller.selectedConsultType.value == i ? bzwizBlue : Colors.grey,))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CupertinoButton(
                borderRadius: BorderRadius.circular(15),
                color: bzwizBlue,
                padding: const EdgeInsets.all(16),
                onPressed: () {},
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 80, right: 80, top: 0, bottom: 0),
                    child: Text(
                      "Done",
                      style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
