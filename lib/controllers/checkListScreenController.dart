import 'package:get/get.dart';

class checkListScreenController extends GetxController{
  List doctorStatus = ["All Status", "Cardiologist", "Orthopedic", "Dentist", "Therapist", "Heart surgeon"];
  List consultType = ["All Type", "Message", "Voice call", "Video call"];
  RxInt selectedDoctorStatus = 0.obs ;
  RxInt selectedConsultType = 0.obs;
}