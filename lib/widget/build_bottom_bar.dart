import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/main_controller.dart';

// ignore: non_constant_identifier_names
Widget BuildBottomBar(BuildContext context) {
  var controller = Get.put(MainController());
  return Positioned(
    bottom: 0,
    child: Container(
      color: Colors.white,
      height: 73.72,
      width: MediaQuery.of(context).size.width,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 39, vertical: 21),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/Vector.png",
                  width: 20.81,
                  height: 20.81,
                ),
                Image.asset(
                  "assets/images/Vector1.png",
                  width: 20.81,
                  height: 20.81,
                ),
                controller.isHomePage.value
                    ? Image.asset(
                        "assets/images/home_fill.png",
                        width: 20.81,
                        height: 20.81,
                      )
                    : Image.asset(
                        "assets/images/vector_home.png",
                        width: 20.81,
                        height: 20.81,
                      ),
                Image.asset(
                  "assets/images/Vector2.png",
                  width: 20.81,
                  height: 20.81,
                ),
                GestureDetector(
                  onTap: (){},
                  child: Image.asset(
                    "assets/images/Vector3.png",
                    width: 20.81,
                    height: 20.81,
                  ),
                ),
              ],
            ),
          )),
    ),
  );
}
