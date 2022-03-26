import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testmasuk/views/second_page.dart';

import '../controllers/main_controller.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.images,
    required this.warna,
  }) : super(key: key);

  final String images;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MainController());
    return GestureDetector(
      onTap: (){
        Get.to(SecondPage(image: images));
        controller.isHomePage.value = false;
      },
      child: Stack(children: [
        Container(
          width: 145.65,
          height: 176,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(13.87),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.67, right: 8.67, top: 8.67),
          child: Column(
            children: [
              Container(
                  width: 127.45,
                  height: 112.71,
                  decoration: BoxDecoration(
                    color: warna,
                    borderRadius: BorderRadius.circular(8.67),
                  ),
                  child:
                      FittedBox(fit: BoxFit.contain, child: Image.asset(images))),
            ],
          ),
        ),
        Positioned(
          left: 0,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.67, right: 8.67, top: 8.67),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 58.95,
                  height: 12.14,
                  decoration: const BoxDecoration(
                    color: Color(0xffDFAE1D),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6.94),
                        bottomRight: Radius.circular(6.94),
                        topRight: Radius.circular(6.94)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/Star 1.png",
                            width: 6.94,
                            height: 6.94,
                          ),
                          const SizedBox(width: 1.73),
                          const Text(
                            "5.0 | 200+ rating",
                            style: TextStyle(fontSize: 5, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.67, right: 8.67, top: 126),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "Rp. 6000",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 8.67,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff64A1F4)),
                  ),
                  const SizedBox(width: 44),
                  Container(
                    width: 47.68,
                    height: 12.14,
                    decoration: BoxDecoration(
                      color: const Color(0xff3C7DD9),
                      borderRadius: BorderRadius.circular(8.67),
                    ),
                    child: const Center(
                      child: Text(
                        "Diskon 10%",
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 6.07,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Text(
                    "Rp. 4500",
                    style: TextStyle(
                        fontSize: 8.67,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3C7DD9)),
                  ),
                ],
              ),
              const SizedBox(height: 0.5),
              Row(
                children: const [
                  Text(
                    "Lorem Ipsum",
                    style: TextStyle(
                        fontSize: 8.67,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000)),
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
