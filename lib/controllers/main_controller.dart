import 'package:get/get.dart';

class MainController extends GetxController {
  RxList<String> images = [
    "image1",
    "image2",
    "image3",
    "image4",
    "image5",
    "image6",
    "image7",
    "image8"
  ].obs;
  var isHomePage = false.obs;
}
