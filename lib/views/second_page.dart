import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/main_controller.dart';
import '../widget/build_bottom_bar.dart';
import '../widget/second_page_line.dart';
import 'third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        BuildItemImage(context),
        BuildTopBar(context),
        BuildItemDescription(context),
        BuildBottomBar(context),
      ]),
    ));
  }

  Positioned BuildItemDescription(BuildContext context) {
    return Positioned(
      top: 350,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 500,
        child: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
                color: Color(0xffFF485A)),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 13),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(60)),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25.15, right: 24.28, top: 24.55),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Tas Gucci",
                                  style: TextStyle(
                                      fontSize: 13.87,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff47623F)),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 78.04,
                                      height: 20.81,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.14),
                                          color: Color(0xffDFAE1D)),
                                      child: const Center(
                                        child: Text(
                                          "Barang Bekas",
                                          style: TextStyle(
                                              fontSize: 8.67,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.67,
                                    ),
                                    Container(
                                      width: 52.9,
                                      height: 20.81,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.14),
                                          color: Color(0xff64A1F4)),
                                      child: const Center(
                                          child: Text(
                                        "Stok 100",
                                        style: TextStyle(
                                            fontSize: 8.67,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      )),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 4.34,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Rp. 126.000",
                                      style: TextStyle(
                                        fontSize: 15.61,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff64A1F4),
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    Text(
                                      "Rp. 100.500",
                                      style: TextStyle(
                                          fontSize: 13.01,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff3C7DD9)),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 70.24,
                                  height: 16.48,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(18.21),
                                      color: Color(0xff3C7DD9)),
                                  child: const Center(
                                      child: Text(
                                    "Diskon 10%",
                                    style: TextStyle(
                                        fontSize: 8.67,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  )),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.14),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    top: BorderSide(color: Color(0xffEFEFEF)),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "vendor",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff47623F)),
                                    ),
                                    const SizedBox(
                                      height: 8.67,
                                    ),
                                    Row(
                                      children: const [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'assets/images/profile.png'),
                                          radius: 17.5,
                                        ),
                                        SizedBox(
                                          width: 15.07,
                                        ),
                                        Text(
                                          "Eiger Store",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xff000000)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/Star1.png",
                                      width: 32.95,
                                      height: 32.95,
                                    ),
                                    const Text(
                                      "5.0 | 200 Terjual",
                                      style: TextStyle(
                                          fontSize: 11.27,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff3C7DD9)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 12.14,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Deskripsi",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff47623F))),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff47623F)),
                                    textAlign: TextAlign.justify,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Ulasan dan Penilaian",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff47623F))),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15.61,
                            ),
                            BuildCustomerReview(
                                context,
                                "assets/images/Ellipse1.png",
                                "Maude Hall",
                                "14 min",
                                "5.0",
                                "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback."),
                            const SizedBox(
                              height: 10,
                            ),
                            BuildCustomerReview(
                                context,
                                "assets/images/Ellipse2.png",
                                "Ester Howard",
                                "14 min",
                                "5.0",
                                "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback."),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15.07,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(60)),
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container BuildCustomerReview(BuildContext context, String image, String name,
      String time, String star, String comment) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.14),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 0.1), //(x,y)
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 12.42, right: 12.42, top: 13.87, bottom: 17.34),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Color(0xff7c94b6),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(320, 220)),
                      ),
                      child: Image.asset(image),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,
                            style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff000000))),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(time,
                            style: const TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffB4BBC6))),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/OrangeStar.png",
                      width: 11.27,
                      height: 11.27,
                    ),
                    Text(
                      star,
                      style: const TextStyle(
                          fontSize: 10.41,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000)),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 29,
              child: Text(
                comment,
                style: TextStyle(fontSize: 8.67, color: Color(0xff272727)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Positioned BuildTopBar(BuildContext context) {
    var controller = Get.put(MainController());
    return Positioned(
      top: 0,
      child: Container(
        height: 66,
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 25.15, vertical: 20.81),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                      controller.isHomePage.value = true;
                    },
                    child: Container(
                      height: 19.08,
                      width: 19.08,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff64A1F4)),
                      child: const FittedBox(
                          fit: BoxFit.cover,
                          child: Icon(
                            Icons.arrow_back,
                            size: 2,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  const Text(
                    "PRODUK DETAIL",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff64A1F4)),
                  )
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(ThirdPage());
                    },
                    child: Image.asset(
                      "assets/images/blue_bag.png",
                      width: 20.81,
                      height: 20.81,
                    ),
                  ),
                  const SizedBox(
                    width: 8.67,
                  ),
                  Image.asset(
                    "assets/images/red_bell.png",
                    width: 20.81,
                    height: 20.81,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Positioned BuildItemImage(BuildContext context) {
    return Positioned(
        top: 120,
        left: 68.5,
        child: SizedBox(
            height: 194.67,
            width: 222,
            child: Column(
              children: [
                FittedBox(
                    fit: BoxFit.contain,
                    child: Image.asset(
                      image,
                      width: 221.99,
                      height: 179.5,
                    )),
                const SizedBox(
                  height: 8.67,
                ),
                BuildSecondPageLine(context)
              ],
            )));
  }
}
